//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-10.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // Creates a list item for each element in the landmarks array.
        // No need to specify 'id', since the 'landmark.swift' model specifies it for you with the 'identifiable' property.
        NavigationSplitView {
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark) // links to the specific landmark view.
                }
                label:{
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
        }
        detail:{ // Placeholder for view after you make tap a list item.
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
