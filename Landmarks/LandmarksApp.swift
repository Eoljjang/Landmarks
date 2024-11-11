//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-10.
//

import SwiftUI

// This is the page that first runs with you start your app.

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData() // 1) Initialize the app with the modelData.
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData) // 2) Then set the environment (lets you pass the data downward in the view heirarchy).
        }
    }
}
