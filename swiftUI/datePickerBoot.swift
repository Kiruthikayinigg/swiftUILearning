//
//  datePickerBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 10/12/23.
//

import SwiftUI

struct datePickerBoot: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    var body: some View {
        VStack{
            Text("sel date is")
//            Text(dateFormatter.string(from: selectedDate))
            //        DatePicker("Select a date", selection: $selectedDate)
//                    DatePicker("Select a date", selection: $selectedDate,
//                               displayedComponents: [.date,.hourAndMinute]
//                    )
            
            DatePicker("sel", selection: $selectedDate, in:startingDate...endingDate, displayedComponents: [.date])
                        .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .datePickerStyle(
                          CompactDatePickerStyle()
            //                WheelDatePickerStyle()
            //                GraphicalDatePickerStyle()
                            
                          
                        )
                }
        }

}

#Preview {
    datePickerBoot()
}
