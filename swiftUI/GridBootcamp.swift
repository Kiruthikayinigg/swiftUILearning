//
//  GridBootcamp.swift
//  swiftUI
//
//  Created by kiruthikayini S on 30/11/23.
//
//GridItem - fixed, adaptive, flexible


import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
        
//        GridItem(.flexible(), spacing: nil, alignment: nil)
        
        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil)
    ]
    
    
    var body: some View {
        LazyVGrid(columns: columns, content: {
//            ForEach(0..<50){
//                index in
                
                Rectangle()
                     .frame(height:50)
//            }
        })
    }
}





//struct GridBootcamp: View {
//    
//    let data = Array(1...100).map{
//        "item NO \($0)"
//    }
//    let layout = [
//        GridItem(.flexible(minimum: 50))
//    ]
//    
//    let rowLayout = [
//        .GridItem(.flexible(minimum: 50))
//    ]
//    
//    var body: some View {
//        NavigationView{
//            ScrollView{
//                VStack{
//                    ScrollView(.horizontal){
//                        LazyVGrid(rows: rowLayout, spacing: 20){
//                            ForEach(data, id: \<#Root#>.self){ item in
//                                VStack{
//                                    
//                                    Text(item).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
#Preview {
    GridBootcamp()
}
