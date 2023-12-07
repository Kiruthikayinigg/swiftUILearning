//
//  ForEach.swift
//  swiftUI
//
//  Created by kiruthikayini S on 29/11/23.
//

import SwiftUI

struct ForEachBoot: View {
    let data: [String] = ["Hi","Hello","Hey Everyone"]
    let myString: String = "Hello"
    var body: some View {
        VStack{
            ScrollView(showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
                ForEach(0..<100) { value in
                    Rectangle()
                        .fill(Color(.blue))
                        .frame(width: .infinity, height: 20)
                        
                }
            })
           
            
//            ForEach(0...<10){ index in
//                HStack{
//                    Circle()
//                        .frame(width: 20, height: 20)
//                    Text("index is \(index)")
//                }
//                
//            }
//            ForEach(data.indices) { index in
//                Text("\(data[index]): \(index)")
//            }
        }
    }
}

#Preview {
    ForEachBoot()
}
