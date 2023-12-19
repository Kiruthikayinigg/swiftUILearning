//
//  NavigationStckBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 14/12/23.
//

import SwiftUI

struct NavigationStckBoot: View {
    @State private var stackPath: [String] = []
    
    let fruits = ["Apple", "Orange", "banana"]
    var body: some View {
        NavigationStack(path: $stackPath){
            ScrollView{
                VStack(spacing: 40){
                    
                    Button("super sgue"){
                        stackPath.append(contentsOf: [
                            "coco", "water", "mango"
                        ])
                    }
                    ForEach(fruits, id:\.self){ fruit in
                        NavigationLink(value: fruit){
                            Text(fruit)
                        }
                    }
                    ForEach(0..<10){ x in
                        NavigationLink(value: x){
                            Text("click me: \(x)")
                        }
                    }
                }
            }
            
            .navigationTitle("nav")
            .navigationDestination(for: Int.self) { value in
                mySecondScreen(value: value)
            }
       
            .navigationDestination(for: String.self) { value in
                Text("another screen \(value)")
            }
        }
    }
}

struct mySecondScreen: View {
    let value: Int
    init(value: Int) {
        self.value = value
        print("init screen \(value)")
    }
    var body: some View {
      Text("screen \(value)")
    
    }
}

#Preview {
    NavigationStckBoot()
}
