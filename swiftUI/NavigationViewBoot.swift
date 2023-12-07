//
//  NavigationView.swift
//  swiftUI
//
//  Created by kiruthikayini S on 07/12/23.
//

import SwiftUI

struct NavigationViewBoot: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, world!",
                               destination:  MyOtherScreen())
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
            }
            .navigationTitle("All inboxes")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
//                trailing: Image(systemName: "gear"))
                trailing: NavigationLink(destination: MyOtherScreen(),
                    label: {
                        Text("Navigate");
                    })
                )
        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .navigationTitle("Green screen!")
                .navigationBarHidden(true)
            VStack {
                Button("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination: Text("3rd screen!"))
            }
        }
    }
}

#Preview {
    NavigationViewBoot()
}
