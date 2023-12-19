//
//  buttonStylesBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 14/12/23.
//

import SwiftUI

struct buttonStylesBoot: View {
    var body: some View {
        VStack{
            Button{
                
            }label:
            {
                Text("button")
            }
            
            Button("title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            Button("title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            .controlSize(.regular)
            
            Button("title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            .controlSize(.small)
            
            Button("title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            .controlSize(.mini)
        }

    }
}

#Preview {
    buttonStylesBoot()
}
