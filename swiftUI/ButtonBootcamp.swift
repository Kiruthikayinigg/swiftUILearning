//
//  ButtonBootcamp.swift
//  swiftUI
//
//  Created by kiruthikayini S on 30/11/23.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "this is my title"
    var body: some View {

        VStack(spacing: 20){
            Text(title)
            Button("press me"){
                self.title = "button was pressed"
            }
            .accentColor(.red)
            
            Button(action:{
                self.title = "button #2 was pressed"
            }, label:{
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(Color.blue
                        .cornerRadius(10)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            })
            
            Button(action:{
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height:75)
                    .shadow(radius:10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            })
            Button(action: {self.title="Button #4"
            },label: {
                Text("finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.blue)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
                })
                    
        }
    }
}

#Preview {
    ButtonBootcamp()
}
