//
//  AIMS_CapstoneApp.swift
//  AIMS-Capstone
//
//  Created by Erinlea McGowan-Moniz on 4/30/23.
//

import SwiftUI

@main
struct AIMS_CapstoneApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
