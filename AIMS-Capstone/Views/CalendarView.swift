//
//  CalendarView.swift
//  AIMS-Capstone
//
//  Created by Erinlea McGowan-Moniz on 4/30/23.
//

import SwiftUI

struct CalendarView: View {
    
    @State private var date = Date()
    
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                Color("col-grey-dark")
                    .ignoresSafeArea()
                VStack {
                    Image("header-orange")
                    DatePicker(selection: $date, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .background(RoundedRectangle(cornerRadius: 20))
                        .foregroundColor(Color("col-grey-light"))
                        .padding(15.0)
                    
                    Spacer()
                   // Spacer()
                    TabView()
                }
               
                
            }
        }
        
    }}
struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
