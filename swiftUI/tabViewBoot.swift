//
//  tabViewBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 10/12/23.
//

import SwiftUI

struct tabViewBoot: View {
    
    @State var selectedTab: Int = 0
    
    let icons:[String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    var body: some View {
        
     
        TabView{
            ForEach(icons, id:\.self){
                icon in Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center:
                    .center, startRadius: 5, endRadius: 300
            )
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
//        TabView(selection: $selectedTab){
//            homeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("browse tab")
//            .tabItem {
//                Image(systemName: "house.fill")
//                Text("browse")
//            }
//            .tag(1)
//            Text("profile tab")
//            .tabItem {
//                Image(systemName: "house.fill")
//                Text("profile")
//            }
//            .tag(2)
//        }
//        .accentColor(.red)
    }
}

#Preview {
    tabViewBoot()
}

//struct homeView: View {
//    @Binding var selectedTab: Int
//    var body: some View {
//        ZStack{
//            Color.cyan.ignoresSafeArea()
//            Text("home tab")
//                .font(.largeTitle)
//                .foregroundColor(.white)
//            Button(action: {
//                selectedTab = 2
//            }, label: {
//                Text("Go to profile")
//                    .font(.headline)
//                    .padding()
//                    .padding(.horizontal)
//                    .background(Color.white)
//                    .cornerRadius(10)
//                    
//            })
//
//        }
//      
//    }
//}
