//
//  //
//  CurrentWeatherSubview.swift
//  Capstone-AIMS
//
//  Created by Erinlea McGowan-Moniz on 4/22/23.
//

import SwiftUI

struct CurrentWeatherSubview: View {
    @EnvironmentObject var modelData: ModelData
    let showFahrenheit: Bool
    
    var body: some View {
        
        
        //Background color
        ZStack{
            Color("col-grey-dark")
                .ignoresSafeArea()

            
            VStack {
          //      Image("header-orange")
                Spacer()
                // Check if there is weather data
                if modelData.weathers != nil {
                    HStack{
                        Image(systemName: "cloud.fill")
                            .foregroundColor(Color("AccentColor"))
                        
                        // Check for Fahrenheit or Celcius setting, and show appropriate data
                        if showFahrenheit {
                            Text("\(String(format: "%.0f", (modelData.weathers!.current.tempFar)))°")
                                .font(.largeTitle)
                                .foregroundColor(Color("AccentColor"))
                            Text("Feels like \(String(format: "%.0f", (modelData.weathers!.current.feels_likeFar)))°")
                                .foregroundColor(Color("col-grey-light"))
                        }
                        else {
                            Text("\(String(format: "%.0f", (modelData.weathers!.current.temp)))°")
                                .font(.largeTitle)
                                .foregroundColor(Color("AccentColor"))
                            Text("Feels like \(String(format: "%.0f", (modelData.weathers!.current.feels_like)))°")
                                .foregroundColor(Color("col-grey-light"))
                        }
                    }
                    // Text for current weather description based on API, ex. 'cloudy'
                    Text("\(modelData.weathers!.current.weather[0].description)")
                        .foregroundColor(Color("col-grey-light"))
                        .padding(.bottom, 50.0)
                }
           Spacer()
            }
        }}
}
struct CurrentWeatherSubview_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherSubview(showFahrenheit: false)
            .environmentObject(ModelData())
    }
}
