//
//  Landmark.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-10.
//

import Foundation
import SwiftUI
import CoreLocation

// This file defines a "Landmark" object. We'll set it up as a struct.

struct Landmark: Hashable, Codable, Identifiable{ // 'codable' makes it easier to move data between this struct and a data file.
    // 1) Set properties.
    var id: Int // 'identifiable' protocol, must specify an 'id' property.
    var name: String
    var park: String
    var state: String
    var description: String
    private var imageName: String // Private cuz each image needs to have its own unique name.
    private var coordinates: Coordinates
    
    var image: Image{
        Image(imageName)
    }
    
    struct Coordinates: Hashable, Codable { // We'll make this reference the JSON file.
        var latitude: Double
        var longitude: Double
    }
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            // Refers to the struct above - takes its latitude and longitude values.
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    
}
