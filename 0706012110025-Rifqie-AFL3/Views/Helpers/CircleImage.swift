//
//  CircleImage.swift
//  0706012110025-Rifqie-AFL3
//
//  Created by Rifqie Tilqa Reamizard on 11/04/23.
//

import SwiftUI

// this is the image that will be called on landmarkdetail, it is just making the square image circular
struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}

