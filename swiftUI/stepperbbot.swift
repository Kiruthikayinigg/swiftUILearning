//
//  stepperbbot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 10/12/23.
//

import SwiftUI

struct stepperbbot: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack{
            Stepper("stepper: \(stepperValue)", value:
                        $stepperValue)
            .padding(50)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ + widthIncrement, height: 100)
            
            Stepper("stepper 2"){
                
                incrementWidth(amount: 100)
            }
        onDecrement:{
            incrementWidth(amount: -100)
            
        }
        }
    }
    func incrementWidth(amount: CGFloat){
        withAnimation(.easeInOut){
            widthIncrement += amount
        }
    }
}

#Preview {
    stepperbbot()
}
