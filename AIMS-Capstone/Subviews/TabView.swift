//
//  TabView.swift
//  AIMS-Capstone
//
//  Created by Erinlea McGowan-Moniz on 4/30/23.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        
        ZStack{
//            Color("col-grey-dark")
//                .ignoresSafeArea()
            HStack{
                VStack {
                    Text("ONE")
                        .foregroundColor(.accentColor)
                    Image(systemName: "flame")
                        .foregroundColor(.accentColor)
                }
                Spacer()
                VStack {
                    Text("TWO")
                        .foregroundColor(.accentColor)
                    Image(systemName: "flame.fill")
                        .foregroundColor(.accentColor)
                }
                Spacer()
                VStack {
                    Text("THREE")
                        .foregroundColor(.accentColor)
                    Image(systemName: "flame.fill")
                        .foregroundColor(.accentColor)
                }
                Spacer()
                VStack {
                    Text("FOUR")
                        .foregroundColor(.accentColor)
                    Image(systemName: "flame.fill")
                        .foregroundColor(.accentColor)
                }
                Spacer()
                VStack {
                    Text("FIVE")
                        .foregroundColor(.accentColor)
                    Image(systemName: "flame.fill")
                        .foregroundColor(.accentColor)
                }
            }
         
            NavigationView {
                NavigationLink(destination: CalendarView()){
                        Text("Hi.")
                    Color("col-grey-dark")
                        .ignoresSafeArea()
                    foregroundColor(Color("AccentColor"))
                    
                            
                    
                }
            }
            
            
            .padding()
        }
    }
}
struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
