//
//  AllCalcs.swift
//  Linecom Wear Calc Watch App
//
//  Created by 澪空 on 2024/5/1.
//

import SwiftUI

struct lengthCalc: View {
    @AppStorage("lengSource") var lengs="cm"
    @AppStorage("lengTarget") var lengt="m"
    @State var slength=""
    @State var result=""
    var body: some View {
        List{
            Section{
                Picker("源单位", selection: $lengs, content: {
                    Text("毫米(mm)").tag("mm")
                    Text("厘米(cm)").tag("cm")
                    Text("分米(dm)").tag("dm")
                    Text("米(m)").tag("m")
                    Text("千米(km)").tag("km")
                })
                Picker("目标单位", selection: $lengt, content: {
                    Text("毫米(mm)").tag("mm")
                    Text("厘米(cm)").tag("cm")
                    Text("分米(dm)").tag("dm")
                    Text("米(m)").tag("m")
                    Text("千米(km)").tag("km")
                })
            }
            Section{
                TextField("键入源数据", text: $slength)
                Button("换算", action: {
                    if slength.isEmpty{
                        result="请输入数据"
                    } else if lengs=="mm" && lengt=="mm"{
                        result=slength
                    } else if lengs=="mm" && lengt=="cm"{
                        let cals=Float(slength)!/10
                        result=String(cals)
                    } else if lengs=="mm" && lengt=="dm"{
                        let cals=Float(slength)!/100
                        result=String(cals)
                    } else if lengs=="mm" && lengt=="m"{
                        let cals=Float(slength)!/1000
                        result=String(cals)
                    } else if lengs=="mm" && lengt=="km"{
                        let cals=Float(slength)!/1000000
                        result=String(cals)
                    } else if lengs=="cm" && lengt=="mm"{
                        let cals=Float(slength)!*10
                        result=String(cals)
                    } else if lengs=="cm" && lengt=="cm"{
                        let cals=Float(slength)!
                        result=String(cals)
                    } else if lengs=="cm" && lengt=="dm"{
                        let cals=Float(slength)!/10
                        result=String(cals)
                    } else if lengs=="cm" && lengt=="m"{
                        let cals=Float(slength)!/100
                        result=String(cals)
                    } else if lengs=="cm" && lengt=="km"{
                        let cals=Float(slength)!/100000
                        result=String(cals)
                    } else if lengs=="dm" && lengt=="mm"{
                        let cals=Float(slength)!*100
                        result=String(cals)
                    } else if lengs=="dm" && lengt=="cm"{
                        let cals=Float(slength)!*10
                        result=String(cals)
                    } else if lengs=="dm" && lengt=="dm"{
                        let cals=Float(slength)!
                        result=String(cals)
                    } else if lengs=="dm" && lengt=="m"{
                        let cals=Float(slength)!/10
                        result=String(cals)
                    } else if lengs=="dm" && lengt=="km"{
                        let cals=Float(slength)!/10000
                        result=String(cals)
                    } else if lengs=="m" && lengt=="mm"{
                        let cals=Float(slength)!*1000
                        result=String(cals)
                    } else if lengs=="m" && lengt=="cm"{
                        let cals=Float(slength)!*100
                        result=String(cals)
                    } else if lengs=="m" && lengt=="dm"{
                        let cals=Float(slength)!*10
                        result=String(cals)
                    } else if lengs=="m" && lengt=="m"{
                        let cals=Float(slength)!
                        result=String(cals)
                    } else if lengs=="m" && lengt=="km"{
                        let cals=Float(slength)!/1000
                        result=String(cals)
                    } else if lengs=="km" && lengt=="mm"{
                        let cals=Float(slength)!*1000000
                        result=String(cals)
                    } else if lengs=="km" && lengt=="cm"{
                        let cals=Float(slength)!*100000
                        result=String(cals)
                    } else if lengs=="km" && lengt=="dm"{
                        let cals=Float(slength)!*10000
                        result=String(cals)
                    } else if lengs=="km" && lengt=="m"{
                        let cals=Float(slength)!*1000
                        result=String(cals)
                    } else if lengs=="km" && lengt=="km"{
                        let cals=Float(slength)!
                        result=String(cals)
                    }
                })
            }
            if !result.isEmpty{
                Section{
                    Text("结果为：")
                    HStack{
                        Spacer()
                        Text(result)
                        Spacer()
                    }
                }
            }
            
        }
    }
}

struct widthCalc: View {
    @AppStorage("widSource") var wids="g"
    @AppStorage("widTarget") var widt="kg"
    @State var swid=""
    @State var result=""
    var body: some View {
        List{
            Section{
                Picker("源单位", selection: $wids, content: {
                    Text("克(g)").tag("g")
                    Text("千克(kg)").tag("kg")
                })
                Picker("目标单位", selection: $widt, content: {
                    Text("克(g)").tag("g")
                    Text("千克(kg)").tag("kg")
                })
            }
            Section{
                TextField("键入源数据", text: $swid)
                Button("换算", action: {
                    if swid.isEmpty{
                        result="请输入数据"
                    } else if wids=="g" && widt=="g"{
                        result=swid
                    } else if wids=="g" && widt=="kg"{
                        let cals=Float(swid)!/1000
                        result=String(cals)
                    } else if wids=="kg" && widt=="g"{
                        let cals=Float(swid)!*1000
                        result=String(cals)
                    } else if wids=="kg" && widt=="kg"{
                        result=swid
                    }
                })
            }
            if !result.isEmpty{
                Section{
                    Text("结果为：")
                    HStack{
                        Spacer()
                        Text(result)
                        Spacer()
                    }
                }
            }
            
        }
    }
}

struct TempCalc: View {
    @AppStorage("tempSource") var temps="c"
    @AppStorage("tempTarget") var tempt="f"
    @State var stemp=""
    @State var result=""
    var body: some View {
        List{
            Section{
                Picker("源单位", selection: $temps, content: {
                    Text("摄氏度(C)").tag("c")
                    Text("华氏度(F)").tag("f")
                })
                Picker("目标单位", selection: $tempt, content: {
                    Text("摄氏度(C)").tag("c")
                    Text("华氏度(F)").tag("f")
                })
            }
            Section{
                TextField("键入源数据", text: $stemp)
                Button("换算", action: {
                    if stemp.isEmpty{
                        result="请输入数据"
                    } else if temps=="c" && tempt=="c"{
                        result=stemp
                    } else if temps=="c" && tempt=="f"{
                        let cals=Float(stemp)!*9/5+32
                        result=String( cals)
                    } else if temps=="f" && tempt=="c"{
                        let cals=(Float(stemp)!-32)*5/9
                        result=String( cals)
                    } else if temps=="f" && tempt=="f"{
                        result=stemp
                    }
                })
            }
            if !result.isEmpty{
                Section{
                    Text("结果为：")
                    HStack{
                        Spacer()
                        Text(result)
                        Spacer()
                    }
                }
            }
            
        }
    }
}
//nmd变量懒得改了，原来名字得了
struct SpeedCalc: View {
    @AppStorage("speedSource") var temps="km/h"
    @AppStorage("speedTarget") var tempt="m/s"
    @State var stemp=""
    @State var result=""
    var body: some View {
        List{
            Section{
                Picker("源单位", selection: $temps, content: {
                    Text("千米每小时(km/h)").tag("km/h")
                    Text("米每秒(m/s)").tag("m/s")
                    Text("英里每小时(mi/h)").tag("mi/h")
                    Text("英尺每秒(ft/s)").tag("ft/s")
                    Text("马赫(ma)").tag("ma")
                })
                Picker("目标单位", selection: $tempt, content: {
                    Text("千米每小时(km/h)").tag("km/h")
                    Text("米每秒(m/s)").tag("m/s")
                    Text("英里每小时(mi/h)").tag("mi/h")
                    Text("英尺每秒(ft/s)").tag("ft/s")
                    Text("马赫(ma)").tag("ma")
                })
            }
            Section{
                TextField("键入源数据", text: $stemp)
                Button("换算", action: {
                    if stemp.isEmpty{
                        result="请输入数据"
                    } else if temps=="km/h" && tempt=="km/h"{
                        result=stemp
                    } else if temps=="km/h" && tempt=="m/s"{
                        let cals=Float(stemp)!/3.6
                        result=String( cals)
                    } else if temps=="km/h" && tempt=="mi/h"{
                        let cals=Float(stemp)!/1.609344
                        result=String( cals)
                    } else if temps=="km/h" && tempt=="ft/s"{
                        let cals=Float(stemp)!/1.09728
                        result=String( cals)
                    } else if temps=="km/h" && tempt=="ma"{
                        let cals=Float(stemp)!/1234.8
                        result=String( cals)
                    } else if temps=="m/s" && tempt=="km/h"{
                        let cals=Float(stemp)!*3.6
                        result=String( cals)
                    } else if temps=="m/s" && tempt=="mi/h"{
                        let cals=Float(stemp)!*2.23693629
                        result=String( cals)
                    } else if temps=="m/s" && tempt=="ft/s"{
                        let cals=Float(stemp)!*3.2808399
                        result=String( cals)
                    } else if temps=="m/s" && tempt=="ma"{
                        let cals=Float(stemp)!/343
                        result=String( cals)
                    } else if temps=="m/s" && tempt=="m/s"{
                        result=stemp
                    } else if temps=="mi/h" && tempt=="km/h"{
                        let cals=Float(stemp)!*1.609344
                        result=String( cals)
                    } else if temps=="mi/h" && tempt=="m/s"{
                        let cals=Float(stemp)!/2.23693629
                        result=String( cals)
                    } else if temps=="mi/h" && tempt=="mi/h"{
                        result=stemp
                    } else if temps=="mi/h" && tempt=="ft/s"{
                        let cals=Float(stemp)!*1.46666667
                        result=String( cals)
                    } else if temps=="mi/h" && tempt=="ma"{
                        let cals=Float(stemp)!/767.269148
                        result=String( cals)
                    } else if temps=="ft/s" && tempt=="km/h"{
                        let cals=Float(stemp)!*1.09728
                        result=String( cals)
                    } else if temps=="ft/s" && tempt=="m/s"{
                        let cals=Float(stemp)!/3.2808399
                        result=String( cals)
                    } else if temps=="ft/s" && tempt=="mi/h"{
                        let cals=Float(stemp)!/1.46666667
                        result=String( cals)
                    } else if temps=="ft/s" && tempt=="ft/s"{
                        result=stemp
                    } else if temps=="ft/s" && tempt=="ma"{
                        let cals=Float(stemp)!/1125.32808
                        result=String( cals)
                    } else if temps=="ma" && tempt=="km/h"{
                        let cals=Float(stemp)!*1234.8
                        result=String( cals)
                    } else if temps=="ma" && tempt=="m/s"{
                        let cals=Float(stemp)!*343
                        result=String( cals)
                    } else if temps=="ma" && tempt=="mi/h"{
                        let cals=Float(stemp)!*767.269148
                        result=String( cals)
                    } else if temps=="ma" && tempt=="ft/s"{
                        let cals=Float(stemp)!/1125.32808
                        result=String( cals)
                    } else if temps=="ma" && tempt=="ma"{
                        result=stemp
                    }
                })
            }
            if !result.isEmpty{
                Section{
                    Text("结果为：")
                    HStack{
                        Spacer()
                        Text(result)
                        Spacer()
                    }
                }
            }
            
        }
    }
}

#Preview {
    lengthCalc()
}
