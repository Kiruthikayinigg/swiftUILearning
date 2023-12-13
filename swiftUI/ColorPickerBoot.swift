//
//  ColorPickerBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 10/12/23.
//

import SwiftUI

struct ColorPickerBoot: View {
    @State var backgroundColor: Color = .gray
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ColorPicker("select a clr",
                selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .font(.headline)
                .padding(50)
        }
    }
}

#Preview {
    ColorPickerBoot()
}
