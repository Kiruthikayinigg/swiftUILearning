//
//  frame.swift
//  swiftUI
//
//  Created by kiruthikayini S on 28/11/23.
//

import SwiftUI

struct frame: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.white)
            .frame(height: 100)
//            .frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .center)
        
            .background(Color.indigo)
            .frame(width: 150)
            .background(Color.accentColor)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height:400)
            .background(Color.green)
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
            .background(Color.yellow)
    
    }
}

#Preview {
    frame()
}
 
