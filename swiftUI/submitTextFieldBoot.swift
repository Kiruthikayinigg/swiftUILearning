//
//  submitTextFieldBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 14/12/23.
//

import SwiftUI

struct submitTextFieldBoot: View {
    
    @State private var text: String = ""
    var body: some View {
        VStack{
            TextField("placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("something to the console")
                }
            TextField("placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("something to the console")
                }
            TextField("placeholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("something to the console")
                }
        }
    }
}

#Preview {
    submitTextFieldBoot()
}
