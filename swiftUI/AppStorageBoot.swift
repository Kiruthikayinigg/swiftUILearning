//
//  AppStorageBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 12/12/23.
//

import SwiftUI

struct AppStorageBoot: View {
    @AppStorage("name") var currentUserName: String?
    var body: some View {
        VStack(spacing:20){
            Text(currentUserName ?? "Add name here")
            if let name = currentUserName {
                Text(name)
            }
            Button("save" .uppercased()){
                let name: String = "sona"
                currentUserName = name
            }
          
        }
    }
}

#Preview {
    AppStorageBoot()
}
