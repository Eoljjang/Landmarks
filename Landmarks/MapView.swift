//
//  MapView.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-10.
//

import SwiftUI
import MapKit // framework

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region)) // Takes the region variable you declared below and renders it.
    }
    
    private var region: MKCoordinateRegion { // this variable is of map data.
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView()
}
