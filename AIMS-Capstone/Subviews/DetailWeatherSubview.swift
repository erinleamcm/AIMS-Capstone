//
//  DetailWeatherSubview.swift
//  Capstone-AIMS
//
//  Created by Erinlea McGowan-Moniz on 4/22/23.
//

import SwiftUI

struct DetailWeatherSubview: View {
    @EnvironmentObject var modelData: ModelData
    let showFahrenheit: Bool
    let count: Int
    
    var body: some View {
        
        ZStack{
            Color("col-grey-dark")
                .ignoresSafeArea()
            VStack {
              //  Image("header-orange")
                Spacer()
                
                
                
                
                
                // check for weather data
                if modelData.weathers != nil {
                    HStack() {
                        
                        // fahrenheit or celcius toggle data
                        if showFahrenheit {
                            Text("\(String(format: "%.0f", (modelData.weathers!.hourly[count].tempFar)))°")
                                .foregroundColor(Color("AccentColor"))
                        }
                        else {
                            Text("\(String(format: "%.0f", (modelData.weathers!.hourly[count].temp)))°")
                                .foregroundColor(Color("AccentColor"))
                        }
                    }
                }
           Spacer()
            }
        }}
}

struct DetailWeatherSubview_Previews: PreviewProvider {
    static var previews: some View {
        DetailWeatherSubview(showFahrenheit: false, count: 1)
            .environmentObject(ModelData())
    }
}
