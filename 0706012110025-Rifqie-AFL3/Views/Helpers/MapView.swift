//
//  MapView.swift
//  0706012110025-Rifqie-AFL3
//
//  Created by Rifqie Tilqa Reamizard on 11/04/23.
//

import SwiftUI
import MapKit

//this is for the maps which will then be called on LandmarkDetail, it shows the location of the coordinate you have given it
struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .medium
    
    enum Zoom: String, CaseIterable, Identifiable {
            case near = "Near"
            case medium = "Medium"
            case far = "Far"

            var id: Zoom {
                return self
            }
        }
    
    var delta: CLLocationDegrees {
            switch zoom {
            case .near: return 0.02
            case .medium: return 0.2
            case .far: return 2
            }
        }
    
    var body: some View {
        Map(coordinateRegion: .constant(region))
    }
    
    var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
