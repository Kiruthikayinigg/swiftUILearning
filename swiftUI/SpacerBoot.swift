//
//  Spacer.swift
//  swiftUI
//
//  Created by kiruthikayini S on 29/11/23.
//

import SwiftUI

struct SpacerBoot: View {
    var body: some View {
        HStack(spacing: 0){
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
             
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
        }
//        .background(Color.blue)
    }
}

#Preview {
    SpacerBoot()
}
