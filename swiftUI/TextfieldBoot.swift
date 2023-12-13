//
//  TextfieldBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 09/12/23.
//

import SwiftUI

struct TextfieldBoot: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView{
            VStack{
                TextField("Type something here...", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .font(.headline)
                
                Button(action: {
                    if textAppropriate(){
                        saveText()
                    }
                 
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textAppropriate() ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                })
                .disabled(!textAppropriate() )
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
            }
            .padding()
            .navigationTitle("TextField Boot")
        }
    }
    func textAppropriate() -> Bool{
        if(textFieldText.count >= 3){
            return true
        }
        return false
    }
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}
    

#Preview {
    TextfieldBoot()
}
