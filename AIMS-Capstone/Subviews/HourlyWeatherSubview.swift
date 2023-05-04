//
//  HourlyWeatherSubview.swift
//  Capstone-AIMS
//
//  Created by Erinlea McGowan-Moniz on 4/22/23.
//

import SwiftUI

struct HourlyWeatherSubview: View {
    @EnvironmentObject var modelData: ModelData
    let showFahrenheit: Bool

    var body: some View {
        
        
        
        
        ZStack{
            
            //GET RID OF B/G COLOR? (UNNECCESSARY FOR DESTINATION/NICER TO LOOK AT HERE)
            Color("col-grey-dark")
                .ignoresSafeArea()
            VStack {
            //      Image("header-orange")
              //  Spacer()
                
                ScrollView(.horizontal) {
                    HStack {
                        // gets next 12 hours of the weather data from the API
                        ForEach(0..<12) { index in
                            VStack {
                                
                                let components = Calendar.current.dateComponents([.hour], from: Date())
                                let hour = components.hour ?? 0
                                
                                // symbol (%) stops hours going past 23:00
                                //FIGURE OUT 12:00 DISPLAY
                                Text("\((hour + index) % 12):00")
                                    .foregroundColor(Color("col-grey-light"))
                                    
                                    
                                
                                DetailWeatherSubview(showFahrenheit: showFahrenheit, count: index)
                                
                            }
                            
                        }
                        .padding(10.0)
                        Spacer()
                        
                        
                    }
                    .frame(height: 100)
                }
                Spacer()
                
            }
        }
    }
}

struct HourlyWeatherSubview_Previews: PreviewProvider {
    static var previews: some View {
        HourlyWeatherSubview(showFahrenheit: false)
            .environmentObject(ModelData())
    }
}
