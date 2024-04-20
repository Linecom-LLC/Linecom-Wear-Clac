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
        NavigationStack{
            List{
                Picker("评估标准",selection: $standard){
                    Text("中国标准").tag("cn")
                    Text("国际标准").tag("intl")
                }
                NavigationLink(destination:{AboutView()},label:{Text("关于")})
            }
        }
    }
}

struct AboutView: View{
    var body: some View {
        VStack{
            HStack{
                Image("AppIcon")
                    .scaledToFit()
                VStack{
                    Text("澪空软件")
                    Text("BMI计算器")
                }
            }
        }
    }
}
#Preview {
    SettingsView()
}
