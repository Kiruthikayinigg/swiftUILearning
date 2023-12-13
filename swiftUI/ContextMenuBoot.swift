//
//  ContextMenuBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 08/12/23.
//

import SwiftUI

struct ContextMenuBoot: View {
    @State var backgroundColor: Color = Color.red
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Image(systemName: "house.fill")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("swiftful thinking")
                .font(.headline)
            Text("how to use context")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30 ))
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
            Label("share post", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = .green
            }, label: {
            Text("report post")
            })
            Button(action: {
                backgroundColor = .blue
            }, label: {
                HStack {
                    Text("report post")
                    Image(systemName: "flame.fill")
                }
               
          
            })
        }))
    }
}

#Preview {
    ContextMenuBoot()
}
