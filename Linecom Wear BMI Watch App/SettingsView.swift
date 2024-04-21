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
        NavigationView{
            List{
                Picker("评估标准",selection: $standard){
                    Text("中国标准").tag("cn")
                    Text("国际标准").tag("intl")
                }
                NavigationLink(destination:{AboutView()},label:{HStack:do {Image(systemName: "info.circle");Text("关于")}})
            }.navigationTitle("设置")
        }
    }
}

struct AboutView: View{
    var body: some View {
        VStack{
            HStack{
                if #available(watchOS 8.0, *) {
                    Image("abouticon")
                        .resizable()
                        .scaledToFit()
                        .mask{Circle()}
                } else {
                    // Fallback on earlier versions
                    Image("abouticon")
                        .resizable()
                        .scaledToFit()
                }
                VStack{
                    Text("澪空软件")
                    Text("BMI计算器")
                    Text("1.0.0")
                }.padding()
            }
            Text("Developed by Linecom").padding()
        }.navigationTitle("关于LWBMI")
    }
}
#Preview {
    SettingsView()
}
