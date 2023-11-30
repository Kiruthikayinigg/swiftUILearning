//
//  padding.swift
//  swiftUI
//
//  Created by kiruthikayini S on 29/11/23.
//
//trailing - right
//leading - left
import SwiftUI

struct padding: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("this is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading page");
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y:10
                )
        ) .padding(.horizontal, 10)
        
    
//            .background(Color.yellow)
////        padding()
//            .padding(.leading, 10)
//            .padding(.trailing, 10)
//            .padding(.all, 10)
//            .background(Color.blue)
    }
}

#Preview {
    padding()
}
