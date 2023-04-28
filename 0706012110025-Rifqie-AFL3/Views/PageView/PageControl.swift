//
//  PageControl.swift
//  0706012110025-Rifqie-AFL3
//
//  Created by Rifqie Tilqa Reamizard on 28/04/23.
//

import SwiftUI
import UIKit

//Keeps the number of featured and updates it based on it
struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int

    func makeCoordinator() -> Coordinator {
            Coordinator(self)
        }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(
                    context.coordinator,
                    action: #selector(Coordinator.updateCurrentPage(sender:)),
                    for: .valueChanged)
        
        return control
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    class Coordinator: NSObject {
            var control: PageControl

            init(_ control: PageControl) {
                self.control = control
            }

            @objc
            func updateCurrentPage(sender: UIPageControl) {
                control.currentPage = sender.currentPage
            }
        }
}
