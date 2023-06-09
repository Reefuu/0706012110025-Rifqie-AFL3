//
//  LandmarkCommands.swift
//  0706012110025-Rifqie-AFL3
//
//  Created by Rifqie Tilqa Reamizard on 28/04/23.
//

import SwiftUI

//landmark commands that appears at the top of the screen
struct LandmarkCommands: Commands {
    @FocusedBinding(\.selectedLandmark) var selectedLandmark

    var body: some Commands {
        SidebarCommands()
        
        CommandMenu("Landmark") {
            Button("\(selectedLandmark?.isFavorite == true ? "Remove" : "Mark") as Favorite") {
                           selectedLandmark?.isFavorite.toggle()
                       }
            .keyboardShortcut("f", modifiers: [.shift, .option])
                       .disabled(selectedLandmark == nil)
        }
    }
}
private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectedLandmarkKey.self] }
        set { self[SelectedLandmarkKey.self] = newValue }
    }
}
