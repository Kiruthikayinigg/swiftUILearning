//
//  EnvironmentObjectBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 12/12/23.
//

import SwiftUI

//observed obj
// state obj
//environment obj - same as state obj but automatically access
class EnvironmentViewModel: ObservableObject{
    @Published var dataArray:[String] = []
    init(){
        getData()
    }
    func getData(){
        self.dataArray.append(contentsOf: [ "iPhone", "iPad", "iMac", "Apple watch"])
    }
}

struct EnvironmentObjectBoot: View {
    @StateObject var viewModel : EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self){ item in
                    NavigationLink (
                        destination: DetailView(selectedItem: item),
                     label: {
                        Text(item)
                    })

                }
            }
            .navigationTitle("iOS devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            NavigationLink (
                destination: FinalView(),
             label: {
                 Text(selectedItem)
                     .font(.headline)
                     .foregroundColor(.yellow)
                     .padding()
                     .padding(.horizontal)
                     .background(Color.white)
                     .cornerRadius(30)
            })

            
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack{
            LinearGradient(
            gradient: Gradient(colors: [Color(Color.red), Color(Color.blue)]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
            }
        
        }
    }


#Preview {
    EnvironmentObjectBoot()
//    DetailView(selectedItem: "iphone")
}
