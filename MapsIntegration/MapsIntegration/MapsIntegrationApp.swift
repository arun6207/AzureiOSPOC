//
//  MapsIntegrationApp.swift
//  MapsIntegration
//
//  Created by Arun Amuri on 28/08/2023.
//

import SwiftUI

@main
struct MapsIntegrationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CustomMapView()
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
