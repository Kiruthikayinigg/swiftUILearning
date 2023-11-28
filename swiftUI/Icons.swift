//
//  Icons.swift
//  swiftUI
//
//  Created by kiruthikayini S on 28/11/23.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "paperplane.fill")
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
        //     .aspectRatio(contentMode: .fit) and .scaledToFit() these two are same image fit in frame size
        //resizable means image size based on frame size
//            .font(.caption)
//            .font(.system(size: 200))
            .foregroundColor(Color.blue)
//            .frame(width:300, height: 300)
//            .clipped()  if image has extra size than frame it will clipped
    }
}

#Preview {
    Icons()
}
