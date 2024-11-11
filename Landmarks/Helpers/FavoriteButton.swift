//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Nathan Wong on 2024-11-11.
//

import SwiftUI

struct FavoriteButton: View {
    // 1) Binding to access this state.
    // - Changes inside this view propagate back to the data source since it's a binding!
    @Binding var isSet: Bool
    
    // 2) Make a button
    var body: some View {
        Button{
            isSet.toggle() // Toggle to 'true' or 'false' depending on this state variable.
        } label: {
            Label("Toggle Favourite", systemImage: isSet ? "star.fill" : "star") // Give it a label.
                .labelStyle(.iconOnly) // Displays icon only instead of showing "Toggle Favourite". But you keep the text there for accessibility.
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    // Give the binding varaible a default initialized value.
    FavoriteButton(isSet: .constant(true))
}
