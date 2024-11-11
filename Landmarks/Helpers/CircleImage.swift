//
//  CircleImage.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-10.
//

import SwiftUI

// For images, you have to import them into "Assets.xcassets" under "preview content" folder.
struct CircleImage: View {
    var image: Image // Property: Store an image.
    
    
    var body: some View {
        image // Render the stored property.
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    // Since you defined a property, you must pass it into the preview.
    CircleImage(image: Image("turtlerock"))
}
