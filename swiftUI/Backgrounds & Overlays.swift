//
//  Backgrounds & Overlays.swift
//  swiftUI
//
//  Created by kiruthikayini S on 28/11/23.
//

import SwiftUI

struct Backgrounds___Overlays: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//
//                
//               Circle()
//                    .fill(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
//                               
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 300, height: 300)
//            .overlay(
//                Text("Sona")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 310, height: 310)
//            )
//        
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle().fill(Color.blue)
//                    .frame(width: 50, height: 50, alignment: .topLeading)
//            )
//        
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150, alignment: .bottomTrailing)
//            )
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple]),
                            startPoint: .topLeading,
                            endPoint: .bottomLeading)
                    )
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .shadow(color: .black,radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0.0, y:0.0)
            )
        
    }
}

#Preview {
    Backgrounds___Overlays()
}
