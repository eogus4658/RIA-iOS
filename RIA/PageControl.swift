//
//  PageControl.swift
//  RIA
//
//  Created by 이대현 on 9/8/24.
//

import UIKit
import SwiftUI

struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.pageIndicatorTintColor = .lightGray
        control.currentPageIndicatorTintColor = .black
        control.numberOfPages = numberOfPages
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}
