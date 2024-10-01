//
//  CalcView.swift
//  Linecom Wear Calc Watch App
//
//  Created by 澪空 on 2024/5/1.
//

import SwiftUI

struct CalcView: View {
    var body: some View {
        @State var isQQPresent = false
        NavigationStack{
            List{
                Section{
                    NavigationLink(destination: {lengthCalc().navigationTitle("长度")}, label: {Text("长度换算")})
                    NavigationLink(destination: {widthCalc().navigationTitle("重量")}, label: {Text("重量换算")})
                    NavigationLink(destination: {TempCalc().navigationTitle("温度")}, label: {Text("温度换算")})
                    NavigationLink(destination: {SpeedCalc().navigationTitle("速度")}, label: {Text("速度换算")})
                    NavigationLink(destination: {BMITab().navigationTitle("LWBMI")}, label: {Text("BMI计算")})
                }
                Section{
                    NavigationLink(destination:{AboutView()},label:{HStack:do {Image(systemName: "info.circle");Text("关于")}})
                }
            }.navigationTitle("LWC单位换算")
        }
    }
}

#Preview {
    CalcView()
}
