//
//  Images.swift
//  swiftUI
//
//  Created by kiruthikayini S on 28/11/23.
//

import SwiftUI

struct Images: View {
    var body: some View {
       Image("wall")
//            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
//            .scaledToFit()
            .frame(width: 300, height: 300)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//            .clipped()
//            .cornerRadius(150)
            .clipShape(
//               Circle()
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                 Ellipse()
                Circle()
            )
    }
}

#Preview {
    Images()
}
