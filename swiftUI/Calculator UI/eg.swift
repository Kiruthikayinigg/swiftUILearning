import SwiftUI

struct ContentViews: View {
    @State private var isFrameVisible = false

    var body: some View {
        VStack {
            Button("Click") {
                isFrameVisible.toggle()
            }

            FrameView()
//                .offset(y: isFrameVisible ? 0 : UIScreen.main.bounds.height) // Set offset to move the frame in and out
//                .animation(.easeInOut) // Add animation for smooth transition
        }
    }
}

struct FrameView: View {
    var body: some View {
        VStack {
            Spacer()
            RoundedRectangle(cornerRadius: 30)
                .frame(height: 350)
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViews()
    }
}






//var body: some View {
//    VStack{
//        Spacer()
//        VStack{
//            RoundedRectangle(cornerRadius: 4)
//                .frame(width: 50, height: 4)
//                .padding()
//            Spacer()
//        }
//        .frame(height: 350)
//        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//        .background(.ultraThinMaterial)
//        .cornerRadius(30)
//    }
//    .ignoresSafeArea()
//    .background(
//       Image("wall")
//    )
//}
//}



//import SwiftUI
//
//struct CalculatorView: View {
//    @State private var showSheet: Bool = false
//    @State var measure: [String] = [
//        "item", "tablespoon", "teaspoon", "cup", "mills", "Grams", "Kilogram",
//        "Pound", "Ounce", "Litre","Deciliter", "Centiliter", "Bottle", "Pinch", "Can",
//        "Bunch", "Packet"
//    ]
//
//    var body: some View {
//        ZStack {
//            Color.black
//                .ignoresSafeArea()
//
//            VStack {
//                Button("click") {
//                    showSheet.toggle()
//                }
//                Spacer()
//            }
//            .sheet(isPresented: $showSheet) {
//                calcUI(measure: measure)
//                    .presentationDetents([.height(300)])
//                    .background(.ultraThinMaterial)
//            }
//        }
//    }
//}
//
//struct calcUI: View {
//    var measure: [String]
//    
//    var body: some View {
//        ZStack {
//            Spacer()
//                .edgesIgnoringSafeArea(.all)
//            
//            VStack {
//                ScrollView(.horizontal, showsIndicators: false) {
//                    LazyHGrid(rows: [GridItem(spacing: 50, alignment: .top)]) {
//                        ForEach(measure, id: \.self) { item in
//                            VStack{
//                                //                                Spacer()
//                                Text(item)
//                                    .padding(10)
//                                    .background(Color.teal.opacity(0.2))
//                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                                    .cornerRadius(8)
//                            }
//                        }
//                        
//                    }
//                    .padding(10)
//                }
//               
//            }
//        }
//    }
//}
//
//
//
//#Preview {
//            CalculatorView()
////            calcUI(measure: "")
//}
