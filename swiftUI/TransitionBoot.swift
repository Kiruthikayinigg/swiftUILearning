//
//  TransitionBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 07/12/23.
//

import SwiftUI

struct TransitionBoot: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("button"){
                    showView.toggle()
                }
//                Spacer()
                
            }
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showView ? 1.0 : 0.0)
//                    .transition(.move(edge: .bottom))
                    .transition(.asymmetric(insertion: .move(edge: .bottom), 
                     removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                    .animation(.easeInOut)
            }
        
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBoot()
}
