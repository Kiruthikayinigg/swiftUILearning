//
//  safeAreaInsetsBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 15/12/23.
//

import SwiftUI

struct safeAreaInsetsBoot: View {
    var body: some View {
        NavigationStack{
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("safe are insets")
            .navigationBarTitleDisplayMode(.inline)
            
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil){
                Text("Hi")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
                
            }
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("hi")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
            }
            }
        }
    }


#Preview {
    safeAreaInsetsBoot()
}
