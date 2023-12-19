//import SwiftUI
//
//struct KeypadButton: View {
//    let title: String
//    let action: () -> Void
//
//    var body: some View {
//        Button(action: action) {
//            Text(title)
//                .font(.title)
//                .frame(width: 70, height: 70)
//                .background(Color.gray)
//                .foregroundColor(.white)
//                .cornerRadius(10)
//        }
//    }
//}
//
//struct Content: View {
//    @State private var enteredCode: String = ""
//
//    var body: some View {
//        VStack {
//            Text("Entered Code: \(enteredCode)")
//                .font(.headline)
//                .padding()
//
//            // Keypad
//            HStack {
//                VStack {
//                    KeypadButton(title: "1") { self.enteredCode += "1" }
//                    KeypadButton(title: "4") { self.enteredCode += "4" }
//                    KeypadButton(title: "7") { self.enteredCode += "7" }
//                    KeypadButton(title: "0") { self.enteredCode += "0" }
//                }
//
//                VStack {
//                    KeypadButton(title: "2") { self.enteredCode += "2" }
//                    KeypadButton(title: "5") { self.enteredCode += "5" }
//                    KeypadButton(title: "8") { self.enteredCode += "8" }
//                    KeypadButton(title: "00") { self.enteredCode += "00" }
//                }
//
//                VStack {
//                    KeypadButton(title: "3") { self.enteredCode += "3" }
//                    KeypadButton(title: "6") { self.enteredCode += "6" }
//                    KeypadButton(title: "9") { self.enteredCode += "9" }
//                    KeypadButton(title: "Delete") { self.enteredCode = String(self.enteredCode.dropLast()) }
//                }
//            }
//            .padding()
//        }
//    }
//}
//
//struct ContentView_Preview: PreviewProvider {
//    static var previews: some View {
//        Content()
//    }
//}



//import SwiftUI
//
//struct CalculatorView: View {
//    @State private var showSheet: Bool = false
//    @State var quantity: [String] = [
//        "item", "tablespoon", "teaspoon", "cup", "mills", "Grams", "Kilogram",
//        "Pound", "Ounce", "Litre","Deciliter", "Centiliter", "Bottle", "Pinch", "Can",
//        "Bunch", "Packet"
//    ]
//    @State var measurement: [String] = [
//        "1/4", "1/3", "1/2", "2/3","3/4"
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
//                calcUI(measure: quantity, measurement: measurement)
//                    .presentationDetents([.height(300)])
//                    .background(.ultraThinMaterial)
//            }
//        }
//    }
//}
//
//struct calcUI: View {
//    var measure: [String]
//    var measurement: [String]
//    @State private var enteredCode: String = ""
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
//                                Text(item)
//                                    .padding(10)
//                                    .background(Color.teal.opacity(0.2))
//                                    .foregroundColor(.blue)
//                                    .cornerRadius(8)
//                            }
//                        }
//                    }
//                    //                    .padding(10)
//                }
//                
//                //                HStack(spacing: 10) {
//                //                    ForEach(measurement, id: \.self) { item in
//                //                        VStack {
//                //                            //                            Spacer(minLength: 20) // Extra space at the top
//                //                            Text(item)
//                //                                .padding(10) // Padding around each item
//                //                                .background(Color.white)
//                //                                .cornerRadius(8)
//                //                        }
//                //                    }
//                //                }
//                //                .padding(10) // Padding outside the second row
//                //                        List {
//                ////                          HStack {
//                ////                            Spacer()
//                //                              ForEach(measurement, id: \.self) { title in
//                //                                VStack{
//                //                                  Text(title)
//                //                                  .padding(10)
//                //                                  background(Color.white)
//                //                                    .cornerRadius(8)
//                //                                }        //
//                //                          }
//                ////                          }
//                //                        }
//                
//            }
//                VStack {
//                    Text("Entered Code: \(enteredCode)")
//                        .font(.headline)
//                        .padding()
//
//                    // Keypad
//                    HStack {
//                        VStack {
//                            KeypadButton(title: "1") { self.enteredCode += "1" }
//                            KeypadButton(title: "4") { self.enteredCode += "4" }
//                            KeypadButton(title: "7") { self.enteredCode += "7" }
//                            KeypadButton(title: "0") { self.enteredCode += "0" }
//                        }
//
//                        VStack {
//                            KeypadButton(title: "2") { self.enteredCode += "2" }
//                            KeypadButton(title: "5") { self.enteredCode += "5" }
//                            KeypadButton(title: "8") { self.enteredCode += "8" }
//                            KeypadButton(title: "00") { self.enteredCode += "00" }
//                        }
//
//                        VStack {
//                            KeypadButton(title: "3") { self.enteredCode += "3" }
//                            KeypadButton(title: "6") { self.enteredCode += "6" }
//                            KeypadButton(title: "9") { self.enteredCode += "9" }
//                            KeypadButton(title: "Delete") { self.enteredCode = String(self.enteredCode.dropLast()) }
//                        }
//                    }
//                    .padding()
//                }
//            }
//            }
//        }
//    
//
//
//#Preview {
////    CalculatorView()
////}
//
//
//
//
//
//import SwiftUI
//
//struct CalculatorView: View {
//    @State private var showSheet: Bool = false
//    @State var quantity: [String] = [
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
//                Button("Click") {
//                    showSheet.toggle()
//                }
//                Spacer()
//            }
//            .sheet(isPresented: $showSheet) {
//                Keypad(quantity: quantity, backgroundColor: Color.black)
//                    .presentationDetents([.height(350)])
//                    .background(.ultraThinMaterial)
//            }
//        }
//    }
//}
//
//struct Keypad: View {
//    var quantity: [String]
//    var backgroundColor: Color
//    @State private var enteredCode: String = ""
//    
//    var body: some View {
//        ZStack {
//            Spacer()
//                .edgesIgnoringSafeArea(.all)
//            
//            VStack {
//                // Horizontal Scroll View for Quantity
//                ScrollView(.horizontal, showsIndicators: false) {
//                    HStack(spacing: 10) {
//                        ForEach(quantity, id: \.self) { item in
//                            Text(item)
//                                .padding(10)
//                                .background(Color.teal.opacity(0.2))
//                                .foregroundColor(.blue)
//                                .cornerRadius(8)
//                        }
//                    }
//                    .padding()
//                }
//                // Keypad
//                VStack {
//                    // First HStack
//                    HStack(spacing: 10) {
//                        KeypadButton(title: "1/4", action: { self.enteredCode += "1/4" }, backgroundColor: Color.purple.opacity(0.2), foregroundColor:Color.purple, width: 50, height: 30)
//                        KeypadButton(title: "1/3", action: { self.enteredCode += "1/3" }, backgroundColor: Color.purple.opacity(0.2),foregroundColor:Color.purple, width: 60, height: 30)
//                        KeypadButton(title: "1/2", action: { self.enteredCode += "1/2" }, backgroundColor: Color.purple.opacity(0.2),foregroundColor:Color.purple, width: 70, height: 30)
//                        KeypadButton(title: "2/3", action: { self.enteredCode += "2/3" }, backgroundColor: Color.purple.opacity(0.2),foregroundColor:Color.purple, width: 70, height: 30)
//                        KeypadButton(title: "3/4", action: { self.enteredCode += "3/4" }, backgroundColor: Color.purple.opacity(0.2), foregroundColor:Color.purple, width: 70, height: 30)
//                    }
//
//                    .padding()
//                        
//                        
//                        // Second HStack
//                        HStack(spacing: 10) {
//                            KeypadButton(title: "1", action: { self.enteredCode += "1" }, backgroundColor: Color.green.opacity(0.2), foregroundColor:Color.green, width: 70, height: 30)
//                            KeypadButton(title: "2", action: { self.enteredCode += "2" }, backgroundColor: Color.green.opacity(0.2),foregroundColor:Color.green, width: 70, height: 30)
//                            KeypadButton(title: "3", action: { self.enteredCode += "3" }, backgroundColor: Color.green.opacity(0.2), foregroundColor:Color.green, width: 70, height: 30)
//                            KeypadButton(title: "/", action: { self.enteredCode += "/" }, backgroundColor: Color.green.opacity(0.2),foregroundColor:Color.green, width: 70, height: 30)
//                        }
//                        .padding()
////                        .background(Color.green.opacity(0.2))
//                        
//                        // Third HStack
////                        HStack(spacing: 10) {
////                            KeypadButton(title: "4") { self.enteredCode += "4" }
////                            KeypadButton(title: "5") { self.enteredCode += "5" }
////                            KeypadButton(title: "6") { self.enteredCode += "6" }
////                            KeypadButton(title: "-") { self.enteredCode += "-" }
////                        }
////                        .padding()
////                        .background(Color.blue.opacity(0.2))
////
////                        // Fourth HStack
////                        HStack(spacing: 10) {
////                            KeypadButton(title: "7") { self.enteredCode += "7" }
////                            KeypadButton(title: "8") { self.enteredCode += "8" }
////                            KeypadButton(title: "9") { self.enteredCode += "9" }
////                            KeypadButton(title: ".") { self.enteredCode += "." }
////                        }
////                        .padding()
////                        .background(Color.yellow.opacity(0.2))
////
////                        // Fifth HStack
////                        HStack(spacing: 10) {
////                            KeypadButton(title: "0") { self.enteredCode += "0" }
////                            KeypadButton(title: "delete") { self.enteredCode = String(self.enteredCode.dropLast()) }
////                        }
////                        .padding()
////                        .background(Color.orange.opacity(0.2))
//                    }
//                }
//            }
//        }
//    }
//    //}
//struct KeypadButton: View {
//    var title: String
//    var action: () -> Void
//    var backgroundColor: Color
//    var foregroundColor: Color
//    var width: CGFloat
//    var height: CGFloat
//    
//    var body: some View {
//        Button(action: {
//            action()
//        }) {
//            Text(title)
//                .frame(width: width, height: height)
//                .background(backgroundColor)
//                .foregroundColor(foregroundColor)
//                .cornerRadius(10)
//        }
//    }
//}
//
//    
//
//
//#Preview {
// CalculatorView()
//}

//
//let purpleAttributes: (backgroundColor: Color, foregroundColor: Color, width: CGFloat, height: CGFloat, font: Font) = (.purple.opacity(0.2), .purple, 63, 30, .system(size: 10))
//
//let greenAttributes: (backgroundColor: Color, foregroundColor: Color, width: CGFloat, height: CGFloat, font: Font) = (.green.opacity(0.2), .green, 80, 30, .system(size: 15))
//
//let blueAttributes: (backgroundColor: Color, foregroundColor: Color, width: CGFloat, height: CGFloat, font: Font) = (.blue.opacity(0.2), .blue, 80, 30, .system(size: 15))
