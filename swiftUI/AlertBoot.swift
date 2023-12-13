//
//  AlertBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 07/12/23.
//

import SwiftUI

struct AlertBoot: View {

    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts{
        case success
        case error
    }
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Button("Button 1"){
                    alertType = .error
//                    alertTitle = "Error uploading Video"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2"){
                    alertType = .success
//                    alertTitle = "successfully uploading Video"
//                    alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
                .alert(isPresented:$showAlert, content: {
                  getAlert()
            })
            }
        }
    }
    func getAlert() -> Alert{
        switch alertType {
        case .success:
            return Alert(title: Text("this was a success!"), message: nil,
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("there was an error"))
        default:
            return Alert(title: Text("error"))
            
        }
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will descrbe the error"),
//            dismissButton: .default(Text("OK")))
//        return   Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will descrbe the error"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel()
//        )
    }
}

#Preview {
    AlertBoot()
}
 
