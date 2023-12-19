//
//  BadgeBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 14/12/23.
//

import SwiftUI

struct BadgeBoot: View {
    var body: some View {
        
        List{
            Text("Hello world")
                .badge(5)
            Text("Hello world")
            Text("Hello world")
        }
//        TabView{
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("hello")
//                }
//                .badge(5)
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("hello")
//                }
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("hello")
//                }
//        }
    }
}

#Preview {
    BadgeBoot()
}
