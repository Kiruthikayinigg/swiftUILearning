//
//  ResizableSheetBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 14/12/23.
//

import SwiftUI

struct ResizableSheetBoot: View {
    @State private var showSheet: Bool = false
    var body: some View {
        Button("click"){
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet){
            myNextView()
                .presentationDetents([.height(100)])
        }
    }
}

struct myNextView: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            Text("hello")
        }
    }
}
#Preview {
    ResizableSheetBoot()
}
