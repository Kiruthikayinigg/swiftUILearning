//
//  shapesBootcamp.swift
//  swiftUI
//
//  Created by kiruthikayini S on 26/11/23.
//

import SwiftUI

struct shapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle

RoundedRectangle(cornerRadius: 5)
//            .fill(Color.green)
//            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//            .stroke()
//            .stroke(Color.red)
      //   .stroke(Color.blue, lineWidth: 30)
       // .stroke(Color.orange, style: <#T##StrokeStyle#>(lineWidth: 30, lineCap: .round, dash: [30]))
    //.trim(from, 0.4, to: 1.0)
       .stroke(Color.purple, lineWidth:50).frame(width:300, height: 200)
        
        
                        
            
        
        
    }
}

#Preview {
    shapesBootcamp()
}
