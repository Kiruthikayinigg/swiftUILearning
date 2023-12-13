//
//  SliderBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 10/12/23.
//

import SwiftUI

struct SliderBoot: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    var body: some View {
        VStack{
            Text("rating")
            Text(
            String(format: "%.0f", sliderValue)
            )
            .foregroundColor(color)
         //   Slider(value: $sliderValue)
          //  Slider(value: $sliderValue, in: 1...5)
           // Slider(value: $sliderValue, in: 1...5, step: 1.0)
        Slider(value: $sliderValue, in: 1...5, step: 1.0,
                onEditingChanged: { (_) in
                color = .green
            },
                minimumValueLabel: Text("1")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/),
                   maximumValueLabel: Text("5"),
                   label: {
                Text("title")
                   })
                .accentColor(.red)
        }
    }
}

#Preview {
    SliderBoot()
}
