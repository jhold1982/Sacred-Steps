//
//  Sacred_StepsApp.swift
//  Sacred Steps
//
//  Created by Justin Hold on 9/28/25.
//

import SwiftUI
import SwiftData

@main
struct Sacred_StepsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataModel.self)
    }
}
