//
//  HomeView.swift
//  RIA
//
//  Created by 이대현 on 7/28/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Text("Login View")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.purple, lineWidth: 2)
                    )
//                Text("Remainder View")
                List {
                    Text("친구들과 강릉 여행")
                        .font(.system(size: 13))
                    Text("친구들과 제주 여행")
                        .font(.system(size: 13))
                }
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.purple, lineWidth: 2)
                    )
            }
            .padding(20)
            .frame(height: 165)
            HStack {
                Spacer(minLength: 20)
                VStack {
                    Text("AI Search")
                    Text("장소에 대해서 세분화합니다.")
                    Text("사진을 찍거나 갤러리에서 가져옵니다.")
                    Text("프롬프트에 원하는 분위기를 가져와보세요!")
                    HStack {
                        Text("건축물")
                        Text("서울")
                    }
                    Text("프롬프트")
                    HStack {
                        Text("사진 찍기")
                        Text("갤러리")
                    }
                    Text("이미지 자리")
                    Text("AI Search 버튼")
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.purple, lineWidth: 2)
                )
                Spacer(minLength: 20)
            }
            
       
        }
    }
}

#Preview {
    HomeView()
}
