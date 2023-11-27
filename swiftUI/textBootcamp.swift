//
//  textBootcamp.swift
//  swiftUI
//
//  Created by kiruthikayini S on 26/11/23.
//

import SwiftUI

struct textBootcamp: View {
    var body: some View {
        Text("Hello, sona! this is the swiftful thinking bootcamp. I am really enjoying this course and learning alot.")
            .font(.body)
//            .fontWeight(.semibold)
            .bold()
//            .underline()
            .underline(true, color: Color.blue)
            .italic()
//          .strikethrough(true, color:                     Color.green)
//          .font(.system(size: 24, weight:                .semibold, design: .serif))
//          .baselineOffset(-50.0)
//          .kerning(10)  (each lettr gap)
            .multilineTextAlignment(.leading)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
        
        //shrink the font size to fit the text into the available space. - minimumScaleFactor
    }
}

#Preview {
    textBootcamp()
}
