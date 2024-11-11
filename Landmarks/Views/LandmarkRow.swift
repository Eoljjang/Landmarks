//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-10.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark // Reference the landmark struct object. It's like creating an instance of a class.
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite{ // If fav - puts a star there.
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow) // system images are vector based.
            }
        }
    }
}

//#Preview("Turtle Rock"){
//    // Needs the 'landmark' instance when we render the preview.
//    LandmarkRow(landmark: landmarks[0])
//}
//
//// Another custom preview to see what the 2nd element would look like. We can also name our previews.
//// On the canvas, you can click a preview option in the top menu bar.
//#Preview("Salmon Creek"){
//    LandmarkRow(landmark: landmarks[1])
//}

#Preview{
    let landmarks = ModelData().landmarks
    // Renders the views together if you grouped them like this.
    Group{
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
