//
//  PopoverBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 07/12/23.
//

import SwiftUI

struct PopoverBoot: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Button("Button") {
                showNewScreen.toggle()
            }
            .font(.largeTitle)
            
            //method 1 sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            //method 2 - transition
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top,100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            //method 3 - animation offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top,10)
//                .offset(y:showNewScreen ? 0: UIScreen.main.bounds.height)
                .offset(y:300)
                .animation(.spring())
        }

        }
    }

struct NewScreen: View{
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Button(action: {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
//                    .background(Color.white.cornerRadius(10))
            })
        
        }
    }
}

#Preview {
    PopoverBoot()
}

