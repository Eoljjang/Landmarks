//
//  CircleImage.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-10.
//

import SwiftUI

// For images, you have to import them into "Assets.xcassets" under "preview content" folder.
struct CircleImage: View {
    var body: some View {
        Image("turtlerock") // Referenced by name of file only.
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
