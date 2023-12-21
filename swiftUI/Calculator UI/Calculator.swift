import SwiftUI

struct RecipeItem: Identifiable {
    var id = UUID()
    var textfield: String
    var enteredCode: String
    var selectedUnit: String
}

struct CalculatorView: View {
    @State private var showSheet: Bool = false
    @State private var enteredCode: String = ""
    @State private var selectedUnit: String? = ""
    @State private var savedText: String = ""
    @State private var isSaveButtonTapped: Bool = false
    @State var textfield: String = ""
    @State private var recipeItems: [RecipeItem] = []
    @State var quantity: [String: String] = [
        "item": "",
        "tablespoon": "Tbsp",
        "teaspoon": "tsp",
        "cup": "cups",
        "mills": "ml",
        "Grams": "g",
        "Kilogram": "kg",
        "Pound": "lb",
        "Ounce": "oz",
        "Litre": "lires",
        "Deciliter": "dl",
        "Centiliter": "cl",
        "Bottle": "bottles",
        "Pinch": "pinches",
        "Can": "cans",
        "Bunch": "bunches",
        "Packet":"packets"
    ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Spacer()
                    VStack {
                        
                        List {
                            Section(header:
                            HStack {
                    Text("Groceries")
                }
                        .font(.headline)
                        .foregroundColor(.purple)
                            ){
                                ForEach(recipeItems) { item in
                                    
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("\(item.textfield) \(item.enteredCode) \(item.selectedUnit)")
                                        }
                                        Spacer()
                                        Button(action: {
                                            deleteItem(item)
                                        }) {
                                            Image(systemName: "trash")
                                                .foregroundColor(.red)
                                        }
                                    }
                                    
                                }
                                .onDelete(perform: delete)
                                //                                           .padding(.top, 50)
                                //                            Spacer()
                            }
                                       }
//                        .padding(.top, 20)
                        
//                        .accentColor(.purple)
//                        .navigationTitle(" list")
//                        .navigationBarItems( trailing: addButton)
                        
//                        .navigationBarTitle("Recipe Items")
//                        .navigationBarItems(trailing: Button("Add") {
//                            showSheet.toggle()
//                        })


//                    }
//                }
//                        func deleteItem(_ item: RecipeItem) {
//                               if let index = recipeItems.firstIndex(where: { $0.id == item.id }) {
//                                   recipeItems.remove(at: index)
//                               }
//                           }

                         

            }
            
            VStack (){
                        Button(action: {
                            showSheet.toggle()
                        }) {
                            Image(systemName: "cross.circle.fill")
                                .font(.system(size: 20))
                        }
                        
                        Spacer()
                    }
                    .padding()
    
            .sheet(isPresented: $showSheet) {
                Keypad(quantity: quantity, backgroundColor: Color.black, recipeItems: $recipeItems, enteredCode: $enteredCode, selectedUnit: $selectedUnit, savedText: $savedText, isSaveButtonTapped: $isSaveButtonTapped, textfield: $textfield)
                    .presentationDetents([.height(400)])
                    .background(.ultraThinMaterial)
            }
            
            
        }
        
    }
    
//    struct SavedItemsView: View {
//        @Binding var recipeItems: [RecipeItem]
//
//        var body: some View {
//            List(recipeItems) { item in
//                VStack(alignment: .leading) {
//                    Text(item.textfield)
//                        .frame(width: 400, height: 40)
//                        .background(Color.white.opacity(0.2))
//                        .foregroundColor(.white)
//                        .cornerRadius(25)
//                    Text("\(item.enteredCode) \(item.selectedUnit)")
//                }
//            }
//            .navigationBarTitle("Recipe Items")
//            .navigationBarItems(trailing: Button("Add") {
//                // Add any additional actions here
//            })
//        }
//    }
    struct Keypad: View {
        var quantity: [String : String]
        var backgroundColor: Color
        @Binding var recipeItems: [RecipeItem]
        @Environment(\.presentationMode) var presentationMode
        @Binding var enteredCode: String
        @Binding var selectedUnit: String?
        @Binding var savedText: String
        @Binding var isSaveButtonTapped: Bool
        @Binding var textfield: String
        @State private var selectedItem: String?
    
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
//                    savedText = ""
//                    isSaveButtonTapped = true
                    if textfield != "" && enteredCode != "" && selectedUnit !=  "" {
//                        savedText = "\(textfield) \(enteredCode) \(selectedUnit ?? "")"
                        let recipeItem = RecipeItem(textfield: textfield, enteredCode: enteredCode, selectedUnit: selectedUnit ?? "")
                        print("rec",recipeItem)
                        recipeItems.append(recipeItem)
                        print("receipe",recipeItems)
                        enteredCode = ""
                        textfield = ""
                    }
                   
                
                    presentationMode.wrappedValue.dismiss()
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
                    if textfield != "" && enteredCode != "" && selectedUnit !=  "" {
//                        savedText = "\(textfield) \(enteredCode) \(selectedUnit ?? "")"
                        let recipeItem = RecipeItem(textfield: textfield, enteredCode: enteredCode, selectedUnit: selectedUnit ?? "")
                        print("rec",recipeItem)
                        recipeItems.append(recipeItem)
                        print("receipe",recipeItems)
                        enteredCode = ""
                        textfield = ""
                    }
                }) {
                    Text("add")
                        .frame(width: 80, height: 40)
                        .background(Color.green.opacity(0.2))
                        .foregroundColor(.green)
                        .cornerRadius(25)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 10))
                }
                .padding(.top, 20)
            }
            
            
            VStack{
                TextField("Ingredients", text: $textfield)
                    .foregroundColor(.blue)
                    .font(.headline)
                    .multilineTextAlignment(.center)
            }
            
            
            HStack {
                if  enteredCode != "" , let selectedUnit = selectedUnit{
                    Text("\(enteredCode) \(selectedUnit)")
                        .multilineTextAlignment(.center)
                }
            }
            Spacer()
            
            ZStack(){
                    Spacer()
                                .edgesIgnoringSafeArea(.all)
                            VStack {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 10) {
                                        ForEach(Array(quantity.keys), id: \.self) { key in
                                            KeypadButton(title: key, action: {
                                                self.selectedUnit = quantity[key]
                                                self.selectedItem = key
                                            }, backgroundColor: selectedItem == key ? Color.blue : Color.blue.opacity(0.2),  foregroundColor: selectedItem == key ? .white : .blue, width: 100, height: 30, font: .system(size: 15))
                                        }

                                    }
                                    .padding()
                                }
                                
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
                        .frame(height: 250)
                        
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
        
        
        var addButton: some View {
            Button("Add", action: {
                add()
            })
        }

        
        func add(){
            
        }
        
                }
                
                struct KeypadButton: View {
                    var title: String
                    var action: () -> Void
                    var backgroundColor: Color
                    var foregroundColor: Color
                    var width: CGFloat
                    var height: CGFloat
                    
//                    @State private var isSelected = false
//                    @GestureState private var isPressed = false
                    
                    var font: Font
                    
                    var body: some View {
                        Button(action: {
                            action()
//                            isSelected.toggle()
            //                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
//                                    isSelected = false
            //                }
                        }) {
                            Text(title)
                                .frame(width: width, height: height)
                                .background( backgroundColor)
                                .foregroundColor(foregroundColor)
                                .font(font)
                                .cornerRadius(10)
                        }
                    }
            }
    func delete(indexSet: IndexSet) {
        recipeItems.remove(atOffsets: indexSet)
    }
 func deleteItem(_ item: RecipeItem) {
     if let index = recipeItems.firstIndex(where: { $0.id == item.id }) {
         recipeItems.remove(at: index)
     }
 }
    }

//            struct SaveButton: View {
//                var text: String
//                var action: () -> Void
//                
//                var body: some View {
//                    Button(action: action) {
//                        Text(text)
//                            .frame(width: 400, height: 40)
//                            .background(Color.white.opacity(0.2))
//                            .foregroundColor(.white)
//                            .cornerRadius(25)
//                    }
//                }
//            }

            #Preview {
             CalculatorView()
            }


