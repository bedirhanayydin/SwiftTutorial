//
//  TabView.swift
//  first
//
//  Created by bedirhan on 7.08.2023.
//

import SwiftUI


@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Journal", systemImage: "book")
                    }
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
        }
    }
}
