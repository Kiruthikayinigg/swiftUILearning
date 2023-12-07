//
//  ExtractedFunctionboot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 02/12/23.
//

import SwiftUI

struct ExtractedFunctionboot: View {
    @State var backgroundColor: Color = Color.pink
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            contentLayer
        }
    }
    
    var contentLayer: some View{
        VStack {
            Text("title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label:{
                Text("press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
            
        }
    }
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
    
}
#Preview {
    ExtractedFunctionboot()
}
