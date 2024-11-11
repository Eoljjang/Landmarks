//
//  ContentView.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-10.
//

import SwiftUI


// Notes on views:
// 1) Hstack = Functions like flex-direction: column. Stacked next to each other.
// 2) Vstack = Functions like flex-direction: row. Stacked on top of each other.

// This file is where we accumualte all of our views:
struct ContentView: View {
    var body: some View {
        LandmarkList() // We render the list
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

// ^ Passes ModelData() object down to any environment.
// - A preview will fail if any subview requires a model object in the environment, but
//   the view you're previewing doesn't have the "environment" modifier.
// - (it's kind of like props)
