//
//  GroupBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 15/12/23.
//

import SwiftUI

struct GroupBoot: View {
    var body: some View {
        VStack(spacing: 50){
            Text("hello")
            Group{
                Text("hello world")
                Text("hello world")
            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        .font(.headline)
    }
}

#Preview {
    GroupBoot()
}
