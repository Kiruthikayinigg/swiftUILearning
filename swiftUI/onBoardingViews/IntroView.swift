//
//  IntroView.swift
//  swiftUI
//
//  Created by kiruthikayini S on 13/12/23.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed in") var currentUserSignedIn: Bool = false
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors:[Color.blue, Color.purple]), center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            if(currentUserSignedIn){
                Text("Profile View")
            } else{
                Text("Onboarding View")
            }
                //if user signed in
                // profile view
                // else
                //onboarding view
        }
    }
}

#Preview {
    IntroView()
}
