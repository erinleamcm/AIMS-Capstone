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
        
        NavigationStack {
            ZStack {
                //Background color
                Color("col-grey-dark")
                    .ignoresSafeArea()
                
                // Image("header-orange")
                //    .padding(.bottom, 25.0)
                //icon only naviagtion bar, text labels were getting messy
                VStack{
                    Spacer()
                    //Nav bar items
                    //SF icons resized like fonts
                    LazyHStack(alignment: .top) {
                        
                        //Calendar button
                        VStack{
                            NavigationLink(destination: CalendarView()) {
                                Image(systemName: "calendar.circle")
                     
                            }
                            Text("Calendar")
                                .multilineTextAlignment(.center)
                                .font(.caption2)
                                .foregroundColor(Color("col-grey-light"))
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(width: 60)
                            
                        }
                        //Weather button
                        VStack{
                            NavigationLink(destination: WeatherView()) {
                                Image(systemName: "cloud.sun.rain.circle")
                               
                            }
                            Text("Weather")
                                .multilineTextAlignment(.center)
                                .font(.caption2)
                                .foregroundColor(Color("col-grey-light"))
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(width: 60)
                            
                        }
                        Spacer()
                        //User info button
                        VStack{
                            NavigationLink(destination: YourInfoView()) {
                                Image(systemName: "person.crop.circle")
                        
                            }
                            Text("User Info")
                                .multilineTextAlignment(.center)
                                .font(.caption2)
                                .foregroundColor(Color("col-grey-light"))
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(width: 60)
                            
                        }
                        Spacer()
                        //Symptom tracker button
                        VStack {
                            NavigationLink(destination: SymptomTrackerView()) {
                                Image(systemName: "list.bullet.circle")
                                    
                            }
                            Text("Symptom Tracker")
                                .multilineTextAlignment(.center)
                                .font(.caption2)
                                .foregroundColor(Color("col-grey-light"))
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(width: 60)
                            
                            
                        }
                    }
                    .font(.largeTitle)
                    .foregroundColor(Color("col-grey-light"))
                    
                    .padding(.top, 15.0)
                    .frame(height: 50.0)
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
