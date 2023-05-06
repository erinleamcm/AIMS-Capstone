//
//  SymptomTrackerView.swift
//  AIMS-Capstone
//
//  Created by Erinlea McGowan-Moniz on 5/4/23.
//

import SwiftUI

struct SymptomTrackerView: View {
    var body: some View {
        ZStack{
            Color("col-grey-dark")
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Image("header-orange")
                    .padding(.bottom, 25.0)
                LazyVStack(){
                    Text("SYMPTOMS!")
                        .foregroundColor(Color("col-grey-light"))
                }
                Spacer()
                TabView()

            }
        }
    }
}

struct SymptomTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomTrackerView()
    }
}
