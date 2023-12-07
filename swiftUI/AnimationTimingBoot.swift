//
//  AnimationTimingBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 06/12/23.
//

import SwiftUI

struct AnimationTimingBoot: View {
    @State var isAnimated: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack{
            Button("button"){
                isAnimated.toggle()
            }
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 1.0))
            
//                .animation(Animation.linear(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//            
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

#Preview {
    AnimationTimingBoot()
}
