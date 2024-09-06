//
//  HeaderView.swift
//  RIA
//
//  Created by 이대현 on 9/6/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            HStack {
                Image("logolabel")
            }
            .frame(maxWidth: .infinity)
            Spacer()
                .frame(maxWidth: .infinity)
            Image(systemName: "arrow.right.circle")
                .resizable()
                .frame(width: 32, height: 32)
                .padding()
        }
        .padding()
        .frame(height: 80)
    }
}

#Preview {
    HeaderView()
}
