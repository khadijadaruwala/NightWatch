//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Khadija Daruwala on 2025-09-17.
//

import SwiftUI

@main
struct NightWatchApp: App {
    @State private var nightWalkViewModel = NightWalkViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(nightWalkViewModel: nightWalkViewModel)
        }
    }
}
