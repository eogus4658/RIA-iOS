//
//  ImagePreview.swift
//  RIA
//
//  Created by 이대현 on 9/8/24.
//

import SwiftUI

struct ImagePreview: View {
    var body: some View {
        Image("tower")
            .resizable()
            .cornerRadius(25)
            .scaledToFit()
    }
}

#Preview {
    ImagePreview()
}
