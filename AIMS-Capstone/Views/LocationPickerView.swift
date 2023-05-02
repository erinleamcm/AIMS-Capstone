//
//  ModelData.swift
//  Capstone-AIMS
//
//  Created by Erinlea McGowan-Moniz on 4/22/23.
//

import SwiftUI

struct LocationPickerView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ZStack{
            Color("col-grey-dark")
                .ignoresSafeArea()
            VStack {
                Image("header-orange")
                Spacer()
                
                Text("Choose your location to display current weather conditions")
                    .foregroundColor(Color("col-grey-light"))
                
                //carousel with supplied locations
                //ADD CURRENT LOCATION DEFAULT
                Picker(selection: $modelData.selectedLocation, label: Text("")) {
                    ForEach(0..<modelData.locations.count) {
                        Text(modelData.locations[$0].name)
                    }
                }
               
                Spacer()
            }
        }
    }
}

struct LocationPickerView_Previews: PreviewProvider {
    static var previews: some View {
        LocationPickerView()
            .environmentObject(ModelData())
    }
}
