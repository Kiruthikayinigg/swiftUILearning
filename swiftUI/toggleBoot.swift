//
//  toggleBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 09/12/23.
//

import SwiftUI

struct toggleBoot: View {
    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack{
            HStack{
                Text("status")
                Text(toggleIsOn ? "online": "offline")
            }
            .font(.title)
                Toggle(
                    isOn: $toggleIsOn,
                label:{
                    Text("change status")
                    
                })
                .toggleStyle(SwitchToggleStyle(tint: Color.red))
            }
            
            .padding(.horizontal, 100)
                
            }
}

#Preview {
    toggleBoot()
}
