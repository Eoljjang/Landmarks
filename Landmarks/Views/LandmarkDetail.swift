//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-10.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark // We now have the specific landmark you clicked stored here.
    var body: some View {
        // Top level view stack. Hi
        ScrollView {
            // 1) Add the mapview in. AUTOMATICALLY refers to the "MapView.swift" file, no need to specify file extension or import it.
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300) // If you only specify height, the width automatically expands to fill the space. Git test.
            
            // 2) Add the CircleImage view.
            CircleImage(image: landmark.image)
                .offset(y: -130) // moves it 130 px up.
                .padding(.bottom, -130) // reduce its bottom padding.
    
            
            // 3) Description
            VStack(alignment: .leading) { // left-aligned.
                // 3.1) Main title
                Text(landmark.name)
                    .font(.title)
                
                // 3.2) Sub title
                HStack {
                    Text(landmark.park)
                        
                    Spacer() // Uses all available horizontal space. Functions like flex: space-between.
                    Text(landmark.state)
                        
                }
                .font(.subheadline) // These styles apply to everything in the HStack container.
                .foregroundStyle(.secondary)
                
                Divider()
                
                // 3.3) Additional details
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name) // Gives the page a title.
        .navigationBarTitleDisplayMode(.inline) // Format.
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
