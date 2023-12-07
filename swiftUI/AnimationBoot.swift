//
//  AnimationBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 06/12/23.
//

import SwiftUI

struct AnimationBoot: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("button"){
                withAnimation(.default){
                    isAnimated.toggle()
                }
                
            }
//            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100: 300,
                height: isAnimated ? 100 : 300)
//                .rotationEffect(Angle(degrees: isAnimated? 360 : 0))
//                .offset(y:isAnimated? 300: 0)
//            Spacer()
            
            
        }
    }
    
    
}

#Preview {
    AnimationBoot()
}
