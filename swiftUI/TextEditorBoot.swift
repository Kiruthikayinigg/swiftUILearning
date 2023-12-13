//
//  TextEditorBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 09/12/23.
//

import SwiftUI

struct TextEditorBoot: View {
    @State var textEditorText: String = "this is the starting text"
    @State var savedText: String = ""
    var body: some View {
        NavigationView(){
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height:250)
                Button(action: {
                    savedText = textEditorText 
                }, label: {
                    Text("Button" .uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                })
                Text(savedText)
            }
            .padding()
            .background(Color.green)
            .navigationTitle("textEditor")
        }
    }
       
}

#Preview {
    TextEditorBoot()
}
