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
        // Top level view stack.
        VStack {
            // 1) Add the mapview in. AUTOMATICALLY refers to the "MapView.swift" file, no need to specify file extension or import it.
            MapView()
                .frame(height: 300) // If you only specify height, the width automatically expands to fill the space.
            
            // 2) Add the CircleImage view.
            CircleImage()
                .offset(y: -130) // moves it 130 px up.
                .padding(.bottom, -130) // reduce its bottom padding.
    
            
            // 3) Description
            VStack(alignment: .leading) { // left-aligned.
                // 3.1) Main title
                Text("Turtle Rock")
                    .font(.title)
                
                // 3.2) Sub title
                HStack {
                    Text("Joshua Tree National Park")
                        
                    Spacer() // Uses all available horizontal space. Functions like flex: space-between.
                    Text("California")
                        
                }
                .font(.subheadline) // These styles apply to everything in the HStack container.
                .foregroundStyle(.secondary)
                
                Divider()
                
                // 3.3) Additional details
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Some descriptive text will go here. What a beautiful place to visit yum yum yum.")
            }
            .padding()
            Spacer() // Since we're calling this in a Vstack, pushes all content to the TOP of the viewstack.
            
            
        }
    }
}

#Preview {
    ContentView()
}
