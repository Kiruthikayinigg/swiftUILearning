//
//  SwipeActions.swift
//  swiftUI
//
//  Created by kiruthikayini S on 14/12/23.
//

import SwiftUI

struct SwipeActions: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    var body: some View {
        List{
            ForEach(fruits, id: \.self){
                Text($0.capitalized)
                    .swipeActions(edge: .trailing,
                                  allowsFullSwipe: true){
                        Button("Archieve"){
                            
                        }
                        .tint(.green)
                        Button("save"){
                            
                        }
                        .tint(.blue)
                        Button("junk"){
                            
                        }
                        .tint(.black)
                    }
                                  .swipeActions(edge: .leading,
                                                allowsFullSwipe: true){
                                      Button("Share"){
                                          
                                      }
                                      .tint(.yellow)
                                  }
            }
            //        func delete(indexSet: IndexSet){
            //
            //        }
        }
    }
//    func delete(indexSet: IndexSet){
//        //
//    }
}
#Preview {
    SwipeActions()
}
