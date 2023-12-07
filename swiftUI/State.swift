//
//  State.swift
//  swiftUI
//
//  Created by kiruthikayini S on 02/12/23.
//


//@State property wrapper to allow us to modify values inside a struct, which would normally not be allowed because structs are value types.

import SwiftUI



struct StateBoot: View {
    
    
       @State private var backgroundColor: Color = Color.red
       @State private var myTitle: String = "My title"
      @State var count: Int = 0
       
       var body: some View {
           
           ZStack{
               backgroundColor.edgesIgnoringSafeArea(.all)
               VStack(spacing:20){
                   Text(myTitle)
                       .font(.title)
                   ExtractedView(count: $count)
                   
                   CounterButtonView(backgroundColor: $backgroundColor, count: $count, myTitle: $myTitle)
               }
           }
       }
   }

#Preview {
    StateBoot()
}

struct CounterButtonView: View {
    @Binding var backgroundColor: Color
    @Binding var count: Int
    @Binding var myTitle: String
    var body: some View {
        HStack(spacing:20){
            Button("Button 1"){
                backgroundColor = .red
                myTitle = "Button 1 was pressed"
                self.count += 1
            }
            Button("button 2"){
                backgroundColor = .purple
                myTitle = "button 2 was pressed"
                self.count -= 1
            }
        }
    }
}

struct ExtractedView: View {
    @Binding var count: Int
    var body: some View {
        Text("Count: \(count)")
            .font(.headline)
            .underline()
    }
}
