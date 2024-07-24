//
//  SettingsView.swift
//  Linecom Wear BMI Watch App
//
//  Created by 澪空 on 2024/4/21.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("standard") var standard="cn"
    var body: some View {
            List{
                Picker("评估标准",selection: $standard){
                    Text("中国标准").tag("cn")
                    Text("国际标准").tag("intl")
                }
                
            }
    }
}

struct AboutView: View{
    var body: some View {
        VStack{
            HStack{
                    Image("abouticon")
                        .resizable()
                        .scaledToFit()
                        .mask{Circle()}
                VStack{
                    Text("澪空软件")
                    Text("单位换算")
                    Text("1.0.2")
                }.padding()
            }
            Text("Developed by Linecom").padding()
        }.navigationTitle("关于LWC")
    }
}
#Preview {
    SettingsView()
}
