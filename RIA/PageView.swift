//
//  PageView.swift
//  RIA
//
//  Created by 이대현 on 9/8/24.
//

import SwiftUI

struct PageView<Page: View>: View {
    @State var currentPage = 0
    var viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        VStack {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var images: [ImagePreview] = [
        ImagePreview(),
        ImagePreview(),
        ImagePreview(),
        ImagePreview(),
        ImagePreview()
    ]
    static var previews: some View {
        PageView(images)
            .aspectRatio(3/2, contentMode: .fit)
    }
}
