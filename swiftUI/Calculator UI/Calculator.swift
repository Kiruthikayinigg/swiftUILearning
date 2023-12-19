import SwiftUI

struct CalculatorView: View {
    @State private var showSheet: Bool = false
    @State private var enteredCode: String = ""
    @State private var selectedUnit: String? = ""
    @State private var savedText: String = ""
    @State private var isSaveButtonTapped: Bool = false

    @State var quantity: [String] = [
        "item", "tablespoon", "teaspoon", "cup", "mills", "Grams", "Kilogram",
        "Pound", "Ounce", "Litre","Deciliter", "Centiliter", "Bottle", "Pinch", "Can",
        "Bunch", "Packet"
    ]
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            if isSaveButtonTapped {
                VStack {
                    Text(savedText)
                        .foregroundColor(.white)
                        .padding(.bottom, 500)
                    }

            }
            
            VStack {
                Button("Click") {
                    showSheet.toggle()
                }
                Spacer()
            }
            .sheet(isPresented: $showSheet) {
                Keypad(quantity: quantity, backgroundColor: Color.black, enteredCode: $enteredCode, selectedUnit: $selectedUnit, savedText: $savedText, isSaveButtonTapped: $isSaveButtonTapped)
                    .presentationDetents([.height(350)])
                    .background(.ultraThinMaterial)
            }
            
         
        }
    }
    struct Keypad: View {
        var quantity: [String]
        var backgroundColor: Color
        
        @Binding var enteredCode: String
        @Binding var selectedUnit: String?
        @Binding var savedText: String
        @Binding var isSaveButtonTapped: Bool
        
        
        
        // first HStack
        let firstRowKeypad: [(title: String, backgroundColor: Color, foregroundColor: Color, width: CGFloat, height: CGFloat, font: Font)] = [
            ("1/4", .purple.opacity(0.2), .purple, 63, 30, .system(size: 10)),
            ("1/3", .purple.opacity(0.2), .purple, 63, 30, .system(size: 10)),
            ("1/2", .purple.opacity(0.2), .purple, 63, 30, .system(size: 10)),
            ("2/3", .purple.opacity(0.2), .purple, 63, 30, .system(size: 10)),
            ("3/4", .purple.opacity(0.2), .purple, 63, 30, .system(size: 10))
        ]
        
        //  second HStack
        let secondRowKeypad: [(title: String, backgroundColor: Color, foregroundColor: Color, width: CGFloat, height: CGFloat, font: Font)] = [
            ("1", .green.opacity(0.2), .green, 80, 30, .system(size: 15)),
            ("2", .green.opacity(0.2), .green, 80, 30, .system(size: 15)),
            ("3", .green.opacity(0.2), .green, 80, 30,.system(size: 15)),
            ("/", .blue.opacity(0.2), .blue, 80, 30, .system(size: 15))
        ]
        
        
        
        let thirdRowKeypad: [(title: String, backgroundColor: Color, foregroundColor: Color, width: CGFloat, height: CGFloat, font:Font)] = [
            ("4", .green.opacity(0.2), .green, 80, 30, .system(size: 15)),
            ("5", .green.opacity(0.2), .green, 80, 30, .system(size: 15)),
            ("6", .green.opacity(0.2), .green, 80, 30, .system(size: 15)),
            ("-", .blue.opacity(0.2), .blue, 80, 30, .system(size: 15))
        ]
        
        let fourthRowKeypad: [(title: String, backgroundColor: Color, foregroundColor: Color, width: CGFloat, height: CGFloat, font:Font)] = [
            ("7", .green.opacity(0.2), .green, 80, 30, .system(size: 15)),
            ("8", .green.opacity(0.2), .green, 80, 30, .system(size: 15)),
            ("9", .green.opacity(0.2), .green, 80, 30, .system(size: 15)),
            (".", .blue.opacity(0.2), .blue, 80, 30, .system(size: 15))
        ]
        
        //    let fifthRowKeypad: [(title: String, backgroundColor: Color, foregroundColor: Color, width: CGFloat, height: CGFloat)] = [
        //        ("0", .green.opacity(0.2), .green, 70, 30),
        //        ("Delete", .green.opacity(0.2), .green, 70, 30),
        //    ]
        
        
        
        var body: some View {
            HStack(alignment: .top) {
                Button(action: {
                    savedText = ""
                    isSaveButtonTapped = true
                    savedText = "\(enteredCode) \(selectedUnit ?? "")"
//                    isSaveButtonTapped = false
//                    isSaveButtonTapped.toggle()
                }) {
                    Text("Save")
                        .frame(width: 80, height: 40)
                        .background(Color.purple.opacity(0.2))
                        .foregroundColor(.purple)
                        .cornerRadius(25)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                }
                .padding(.top, 20)
                
                
                Spacer()
                
                Button(action: {
                    // Next action
                }) {
                    Text("Next")
                        .frame(width: 80, height: 40)
                        .background(Color.green.opacity(0.2))
                        .foregroundColor(.green)
                        .cornerRadius(25)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 10))
                }
                .padding(.top, 20)
            }
            
            //            if isSaveButtonTapped {
       

            Spacer()
            HStack {
                if enteredCode != "" , let selectedUnit = selectedUnit{
                          Text("\(enteredCode) \(selectedUnit)")
                        
                            .multilineTextAlignment(.center)
                        } else {
                          Text("Ingredient")
                        }
            }
            
            Spacer()
            ZStack {
                Spacer()
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack {
                    // Horizontal Scroll View for Quantity
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(quantity, id: \.self) { item in
                                KeypadButton(title: item, action: {
                                    self.selectedUnit =  "\(item)"
                                   print(item)
                                    
                                }, backgroundColor: Color.teal.opacity(0.2), foregroundColor: .blue, width: 100, height: 30, font: .system(size: 15))
                                
                            }

                    }
                .padding()
            }
                               
//
//                    ScrollView(.horizontal, showsIndicators: false) {
//                        HStack(spacing: 10) {
//                            ForEach(quantity, id: \.self) { item in
//                                if !self.enteredCode.isEmpty {
//                                    KeypadButton(title: item, action: {
//                                        // Append the selected item to the enteredCode
//                                        self.enteredCode = " \(item)"
//                                        self.selectedUnit = item
//                                    }, backgroundColor: Color.teal.opacity(0.2), foregroundColor: .blue, width: 100, height: 30, font: .system(size: 15))
//                                }
//                            }
//                        }
//                        .padding()
//                    }



                    VStack {
                            generateRowButtons(buttons: firstRowKeypad)
                            generateRowButtons(buttons: secondRowKeypad)
                            generateRowButtons(buttons: thirdRowKeypad)
                            generateRowButtons(buttons: fourthRowKeypad)

                            HStack(spacing: 10) {
                            KeypadButton(title: "0", action: {
                                
                                
                                self.enteredCode += "0"
                            }, backgroundColor: Color.green.opacity(0.2), foregroundColor:Color.green, width: 170, height: 30, font: .system(size: 15))
                                    KeypadButton(title: "delete", action: { self.enteredCode = String(self.enteredCode.dropLast()) }, backgroundColor: Color.red.opacity(0.2), foregroundColor:Color.red, width: 170, height: 30,  font: .system(size: 15))
                                            }
                                        }
                    
                                    }
                
                                }
            
                            }
    
     func generateRowButtons(buttons: [(title: String, backgroundColor: Color, foregroundColor: Color, width: CGFloat, height: CGFloat, font: Font)]) -> some View {
               HStack(spacing: 10) {
                   ForEach(buttons, id: \.title) { item in
                       KeypadButton(title: item.title, action: {
                           print(item.title)
                           self.enteredCode += item.title
                       }, backgroundColor: item.backgroundColor, foregroundColor: item.foregroundColor, width: item.width, height: item.height, font: item.font)
                   }
               }
           }
       }

    struct KeypadButton: View {
        var title: String
        var action: () -> Void
        var backgroundColor: Color
        var foregroundColor: Color
        var width: CGFloat
        var height: CGFloat
        
        var font: Font
        
        var body: some View {
            Button(action: {
                action()
            }) {
                Text(title)
                    .frame(width: width, height: height)
                    .background(backgroundColor)
                    .foregroundColor(foregroundColor)
                    .font(font)
                    .cornerRadius(10)
            }
        }
    }
}
    
//
//struct SaveButton: View {
//        var action: () -> Void
//
//        var body: some View {
//            Button(action: {
//                action()
//            }) {
//                Text("Save")
//                    .frame(width: 80, height: 40)
//                
//                    .background(Color.purple.opacity(0.2))
//                    .foregroundColor(.purple)
//                    .cornerRadius(25)
//            }
//        }
//    }


#Preview {
 CalculatorView()
}
