//
//  YourInfoView.swift
//  AIMS-Capstone
//
//  Created by Erinlea McGowan-Moniz on 5/4/23.
//

import SwiftUI

struct YourInfoView: View {
    var body: some View {
        ZStack{
            Color("col-grey-dark")
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Image("header-orange")
                    .padding(.bottom, 25.0)
                LazyVStack(){
                    Text("INFO!")
                        .foregroundColor(Color("col-grey-light"))
                }
                Spacer()
                TabView()

            }
        }
    }
}

struct YourInfoView_Previews: PreviewProvider {
    static var previews: some View {
        YourInfoView()
    }
}
