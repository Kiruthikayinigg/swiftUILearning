//
//  FocusStateBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 14/12/23.
//

import SwiftUI


struct FocusStateBoot: View {
    enum OnboardingFields{
        case username
        case password
    }
    @State private var username: String = ""
    @State private var password: String = ""
//    @FocusState private var usernameInFocus: Bool
//    @FocusState private var passwordInFocus: Bool
    
    @FocusState private var fieldInFocus: OnboardingFields?
    
    var body: some View {
        VStack{
            TextField("add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: 300)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            TextField("add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: 300)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            Button("sign up"){
                   let usernameIsValid = !username.isEmpty
                   let passwordIsValid = !password.isEmpty
                   if usernameIsValid && passwordIsValid{
              print("sign up")
            } else if usernameIsValid{
                fieldInFocus = .password
            } else{
                fieldInFocus = .username
            }
//            .padding(40)
//            .onAppear{
//                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
//                    self.usernameInFocus = true
//                }
            }
        }
    }
}

#Preview {
    FocusStateBoot()
}
