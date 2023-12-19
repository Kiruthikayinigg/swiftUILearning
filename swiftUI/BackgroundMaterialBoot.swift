//
//  BackgroundMaterialBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 14/12/23.
//

import SwiftUI

struct BackgroundMaterialBoot: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
//                RoundedRectangle(cornerRadius: 4)
//                    .frame(width: 50, height: 4)
//                    .padding()
//                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
           Image("wall")
        )
    }
}

#Preview {
    BackgroundMaterialBoot()
}
