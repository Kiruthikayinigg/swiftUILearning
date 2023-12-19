//
//  AsyncImageBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 14/12/23.
//

import SwiftUI

struct AsyncImageBoot: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        
        AsyncImage(url: url){ phase in
            switch phase{
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width:100, height:100)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionMark")
                    .font(.headline)
            default:
                Image(systemName: "questionMark")
                    .font(.headline)
            }
        }
//        AsyncImage(url: url, content: {
//            returnedImage in returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width:100, height: 100)
//                .cornerRadius(20)
//        },placeholder: {
//            ProgressView()
//        })
    }
}

#Preview {
    AsyncImageBoot()
}
