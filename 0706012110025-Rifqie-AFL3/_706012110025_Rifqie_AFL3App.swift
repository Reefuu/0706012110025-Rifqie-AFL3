//
//  _706012110025_Rifqie_AFL3App.swift
//  0706012110025-Rifqie-AFL3
//
//  Created by Rifqie Tilqa Reamizard on 11/04/23.
//

import SwiftUI


@main
struct _706012110025_Rifqie_AFL3App: App {
    
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)

        }
    }
}
