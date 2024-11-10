//
//  MapView.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-10.
//

import SwiftUI
import MapKit // framework

struct MapView: View {
    var coordinate: CLLocationCoordinate2D // Property: Coordinate.
    
    var body: some View {
        Map(position: .constant(.region(region))) // Takes the region variable you declared below and renders it.
    }
    
    private var region: MKCoordinateRegion { // this variable is of map data.
        MKCoordinateRegion(
            center: coordinate, // Access the property here.
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
