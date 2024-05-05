//
//  CalcView.swift
//  Linecom Wear BMI Watch App
//
//  Created by 澪空 on 2024/3/7.
//

import SwiftUI

struct BMICalc: View {
    @State var inheight=""
    @State var inweight=""
    @State var inage=""
    @State var result=Float(0.0)
    @State var stred_result=""
    @State var select="gz"
    @State var health=""
    @AppStorage("standard") var standard="cn"
    //@State var hs_index=0
    var body: some View {
            List{
                Section{
                    Picker("计量制度",selection: $select){
                        Text("公制").tag("gz")
                        Text("英制").tag("yz")
                    }
                    
                }
                Section{
                    //TextField("年龄",text: $inage)
                    if select=="gz"{
                        TextField("身高(cm)",text: $inheight)
                        TextField("体重(kg)",text: $inweight)
                    } else if select=="yz"{
                        TextField("身高(in)",text: $inheight)
                        TextField("体重(lb)",text: $inweight)
                    }
                }
                Section{
                    Button("计算"){
                        if !inheight.isEmpty && !inweight.isEmpty{
                            let weight=Float(inweight)
                            let height=Float(inheight)!/100
                            let height2=height*height
                            if select=="gz"{
                                result=weight!/height2
                                stred_result=String(format:"%.1f",result)
                            } else if select=="yz"{
                                result=weight!/height2*703
                                stred_result=String(format:"%.1f",result)
                            }
                            if standard=="cn"{
                                if result<=18.4{
                                    health="偏瘦"
                                } else if 18.5 <= result && result <= 23.9{
                                    health="正常"
                                } else if 24 <= result && result <= 27.9{
                                    health="过重"
                                } else if result >= 28.0{
                                    health="肥胖"
                                }
                            } else if standard=="intl"{
                                if result<16.0{
                                    health="极瘦"
                                } else if 16.0<result && result<16.9{
                                    health="中等瘦"
                                } else if 17.0<result && result<18.4{
                                    health="偏瘦"
                                } else if 18.5<result && result<24.9{
                                    health="正常"
                                } else if 25.0<result && result<29.9{
                                    health="过重"
                                } else if 30.0<result && result<34.9{
                                    health="一级肥胖"
                                } else if 35.0<result && result<39.9{
                                    health="二级肥胖"
                                } else if 40.0>result{
                                    health="三级肥胖"
                                }
                            }
                        } else {
                            
                        }
                    }
                }
                Section{
                    if !stred_result.isEmpty{
                        Section{
                            Text("您的BMI为: \(stred_result)")
                            Text("评估结果为：\(health)")
                        }
                    }
                }
            }
    }
}
struct BMITab: View{
    var body: some View{
        TabView{
            BMICalc()
            SettingsView()
        }
    }
}

#Preview {
    ContentView()
}
