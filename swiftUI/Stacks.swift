//
//  Stacks.swift
//  swiftUI
//
//  Created by kiruthikayini S on 28/11/23.
//

import SwiftUI

struct Stacks: View {
//    Vstacks -> Verical
//    Hstacks -> Horizontal
//    Zstacks -> zIndex(back to front)
    var body: some View {
//        ZStack(alignment: .trailing, content: {
//            Rectangle()
//                .fill(Color.teal)
//                .frame(width:200, height: 200)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width:150, height: 150)
//            Rectangle()
//                .fill(Color.purple)
//                .frame(width:100, height: 100)
//            
//        })
        
        //leading - attached in left side
        
        
        
//
//        ZStack(alignment: .top){
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//            VStack(alignment: .leading){
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150, alignment: .center)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100, alignment: .center)
//                HStack(alignment: .bottom){
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 50, height: 50, alignment: .center)
//                    
//                    Rectangle()
//                        .fill(Color.pink)
//                        .frame(width: 75, height: 75, alignment: .center)
//                    
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 25, height: 25, alignment: .center)
//                    
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
       
//        
//        VStack(alignment: .center, spacing: 20){
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("items in your cart")
//                .font(.caption)
//                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//           
//                
//        }
        
        VStack(spacing: 50){
            ZStack{
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Text("1")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }
            Text("1")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width:100, height: 100)
                    
                )
        }
    }
}

#Preview {
    Stacks()
}
