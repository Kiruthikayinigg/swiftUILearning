//
//  ConditionalBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 06/12/23.
//

import SwiftUI

struct ConditionalBoot: View {
    @State var showCircle: Bool = false;
    @State var showRectangle: Bool = false;
    @State var isLoading: Bool = false;
    var body: some View {
        VStack(spacing: 20){
            
            Button("Is loading: \(isLoading.description)"){
                isLoading.toggle()
            }
            if(isLoading){
                ProgressView()
            }
            
            Button("Circle Button: \(showCircle.description)"){
                showCircle.toggle()
            }
            Button("Rectangle Button: \(showRectangle.description)"){
                showRectangle.toggle()
            }
            if showCircle == true{
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
//            Spacer()
//            else if showRectangle {
//                Rectangle()
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
//            }
//            else{
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .frame(width: 200, height: 100)
//            }
            
            if showRectangle {
                Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
            
            if showCircle || showRectangle{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: 100)
            }
        }
    }
}

#Preview {
    ConditionalBoot()
}
