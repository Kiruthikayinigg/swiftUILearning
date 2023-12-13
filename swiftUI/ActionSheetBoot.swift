//
//  ActionSheetBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 08/12/23.
//

import SwiftUI

struct ActionSheetBoot: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherpost
    
    enum ActionSheetOptions{
        case isMypost
        case isOtherpost
    }
    var body: some View {
//        Button("Click me"){
//            showActionSheet.toggle()
//        }
        
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30,height: 30)
                Text("@username")
//                Spacer()
                
                Button(action: {
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
    }
    func getActionSheet() -> ActionSheet{
        let button1: ActionSheet.Button = .default(Text("Default"))
        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
        let button3: ActionSheet.Button = .cancel()
        
        return ActionSheet(title: Text("this is the title"),
        message: Text("this is the message."),
        buttons: [button1, button1,button1,button2,button3]
        )
        }
    }


#Preview {
    ActionSheetBoot()
}
