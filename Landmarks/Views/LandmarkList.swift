//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-10.
//

import SwiftUI

struct LandmarkList: View {
    // Reads the model data of the current view. @Environment receives data from views that're higher up in the heirarchy.
    @Environment(ModelData.self) var modelData
    
    
    // State = Speicfic to each view and its subviews. Thus, they're always private.
    @State private var showFavouritesOnly = false
    
    // If showFavouritesOnly = false -> Returns every landmark in the list.
    // If showFavouritesOnly = true -> Checks if the landmark is a favourite, and adds it to the list if so.
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavouritesOnly || landmark.isFavorite)
            
        }
    }
    
    var body: some View {
        // Creates a list item for each element in the landmarks array.
        // No need to specify 'id', since the 'landmark.swift' model specifies it for you with the 'identifiable' property.
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavouritesOnly){ // $binding = binds to the respective state variable. Lets you reference it anytime
                    Text("Favourites Only")
                }
                ForEach(filteredLandmarks){ landmark in // Iterates through the filtered landmarks.
                    NavigationLink{
                        LandmarkDetail(landmark: landmark) // links to the specific landmark view.
                    }
                    label:{
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        }
        detail:{ // Placeholder for view after you make tap a list item.
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData()) // Renders the current data in the model (IE: live updates based on the model).
}
