//
//  PageView.swift
//  0706012110025-Rifqie-AFL3
//
//  Created by Rifqie Tilqa Reamizard on 28/04/23.
//

import SwiftUI

//For the featured places that will be able to be scrolled and seen between 3 places
struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 1
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
