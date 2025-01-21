//
//  CodePath_PreworkApp.swift
//  CodePath_Prework
//
//  Created by Emily Perez-Rodriguez on 1/15/25.
//

import SwiftUI
import SwiftData

@main
struct CodePath_PreworkApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
