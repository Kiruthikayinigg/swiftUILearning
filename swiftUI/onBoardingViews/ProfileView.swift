//
//  ProfileView.swift
//  swiftUI
//
//  Created by kiruthikayini S on 14/12/23.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage ("name") var currentUserName: String?
    @AppStorage ("age") var currentUserAge: Int?
    @AppStorage ("gender") var currentUserGender: String?
    @AppStorage ("signed in") var currentUserSignedIn: Bool = false
  
    var body: some View {
        VStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                Text(currentUserName ?? "your name here")
                Text("this user is \(currentUserAge ??  0) years old")
                Text("this user is \(currentUserGender ??  "unknown")")
                Text("sign out")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.black)
                .cornerRadius(10)
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
    func signOut(){
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        currentUserSignedIn = false
    }
}

#Preview {
    ProfileView()
}
