//
//  ToolbarBooot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 14/12/23.
//

import SwiftUI

struct ToolbarBooot: View {
    @State private var text: String = ""
    @State private var paths: [String] = []
    var body: some View {
        NavigationStack(path: $paths){
            ZStack{
                Color.white.ignoresSafeArea()
                
                ScrollView{
                    TextField("placeholder", text: $text)
                    
                    ForEach(0..<50){ x in
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 200, height: 200)
                        
                    }
                }
            }
            .navigationTitle("toolbar")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "gear")
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbarTitleMenu{
            Button("screen 1"){
                paths.append("screen 1")
            }
            Button("screen 1"){
                paths.append("screen 1")
            }
        }
        .navigationDestination(for: String.self) { value in
            Text("new screen: \(value)")
        }
    }
}

#Preview {
    ToolbarBooot()
}
