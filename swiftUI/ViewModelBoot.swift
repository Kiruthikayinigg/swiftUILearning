//
//  ViewModelBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 12/12/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id = UUID()
    let name: String
    let count: Int
}

struct ViewModelBoot: View {
    @State var fruitArray: [FruitModel] = [
//        FruitModel(name: "Apples", count: 5)
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(fruitArray){ fruit in
                    HStack{
                        Text("\(fruit.count)")
                            .foregroundColor(.red)
                        Text(fruit.name)
                            .font(.headline)
                            .bold()
                    }
                }
                .onDelete(perform: deleteFruit)
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit list")
            .onAppear{
                getFruits()
            }
        }
    }
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "watermelon", count: 88)
        
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)
    }
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}

#Preview {
    ViewModelBoot()
}
