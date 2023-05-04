//
//  TabView.swift
//  AIMS-Capstone
//
//  Created by Erinlea McGowan-Moniz on 5/4/23.
//

import SwiftUI

struct TabView: View {
    
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                //Background color
                Color("col-grey-dark")
                    .ignoresSafeArea()
                
                   // Image("header-orange")
                    //    .padding(.bottom, 25.0)
//icon only naviagtion bar, text labels were getting messy
                    LazyHStack{
                        NavigationLink(destination: CalendarView()) {
                            Image(systemName: "calendar.circle")
                                .foregroundColor(Color("AccentColor"))
                        }
                        
                    Spacer()
                    
                        NavigationLink(destination: YourInfoView()) {
                            Image(systemName: "person.crop.circle")
                                .foregroundColor(Color("AccentColor"))
                        }
                        
                    }
                    
                 //   .padding([.top, .leading, .trailing], 20.0)
                //    .frame(maxHeight: .infinity, alignment: .bottom)
                }
                
            }
            
        }
        
    }
    



struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
