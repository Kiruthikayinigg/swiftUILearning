//
//  PickerBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 09/12/23.
//

import SwiftUI

struct PickerBoot: View {
    @State var Selection: String = "1"
    let filterOptions: [String] = [
        "most recent", "most popular", "most liked"
    ]
    
    init(){
        
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
        
    }
    
    var body: some View {
        
                Picker(
                    selection:$Selection,
                    label: Text("Filter:"),
                    content: {
                        ForEach(filterOptions.indices) { index in Text(filterOptions[index])
                                .tag(filterOptions[index])
                        }
                    })
                    

        
        
        
//        Picker(
//            selection:$Selection,
//            label:
//                HStack{
//                    Text("Filter:")
//                    Text(Selection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(Color.blue)
//                .cornerRadius(10)
//                .shadow(color:Color.blue.opacity(0.3),radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:0, y:10), content: {
//                    ForEach(filterOptions, id:\.self) { option in
//                        HStack{
//                            Text(option)
//                            Image(systemName: "heart.fill")
//                        }
//                        .tag(option)
//                    }
//                }
//        )
//        
//        .pickerStyle(MenuPickerStyle())
        
        
        
        
//        VStack{
//            HStack{
//                Text("age:")
//                Text(Selection)
//            }
//            Picker(
//                selection: $Selection,
//                label: Text("picker"),
//                content: {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundStyle(.red)
//                            .tag("\(number)")
//                    }
//                })
//            .pickerStyle(WheelPickerStyle())
//        }
    }
}

#Preview {
    PickerBoot()
}
