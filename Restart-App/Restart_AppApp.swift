//
//  Restart_AppApp.swift
//  Restart-App
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/10.
//

import SwiftUI

@main
struct Restart_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
