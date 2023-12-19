//
//  colors.swift
//  swiftUI
//
//  Created by kiruthikayini S on 26/11/23.
//

import SwiftUI

struct colorsboot: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
//                Color.primary
//            .frame(width:300, height: 200)
        
//            .fill(
//               // Color.primary
//               // Color(#colorLiteral(red: 0, green:0.3285208941, blue: 0.5748849511, alpha:1)))
//        Color(UIColor.secondarySystemBackground))
                Color("CustomColor")
            )
            .frame(width: 300,height: 200)
            .shadow(color: 
                Color("CustomColor").opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -20, y: -20)
                
//        we can use custom color or any color
//          .shadow(color: Color.red,
//            radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -20, y: -20)
    }
}

#Preview {
    colorsboot()
}
