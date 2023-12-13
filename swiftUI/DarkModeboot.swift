//
//  DarkModeboot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 11/12/23.
//

import SwiftUI

struct DarkModeboot: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("this is primary")
                        .foregroundColor(.primary)
                    Text("this is secondary")
                        .foregroundColor(.secondary)
                    Text("this is black")
                        .foregroundColor(.black)
                    Text("this is white")
                        .foregroundColor(.white)
                    Text("this is globally")
                        .foregroundColor(Color("Adaptive"))
                    //it is in assets
                    Text("this is locally")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                    
                    
                }
            }
        }
    }
}

#Preview {
    DarkModeboot()
        .preferredColorScheme(.light )
}
