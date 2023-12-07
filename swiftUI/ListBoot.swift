//
//  ListBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 07/12/23.
//

import SwiftUI

struct ListBoot: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView{
            List {
                Section(header:
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                        .font(.headline)
                        .foregroundColor(.purple)
                ) {
                    
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id:\.self){ veggie in
                        Text(veggie.capitalized)
                    }
                    // You can add .onDelete(perform: deleteVeggie) and .onMove(perform: moveVeggie) here if needed
                }
            }
//            .listStyle(SidebarListStyle())
            .accentColor(.purple)
            .navigationTitle("Grocery list")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
            
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Cocunut")
    }
}



#Preview {
    ListBoot()
}
