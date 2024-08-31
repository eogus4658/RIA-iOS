//
//  MyTravelListView.swift
//  RIA
//
//  Created by 이대현 on 8/21/24.
//

import SwiftUI

struct MyTravelListView: View {
    var body: some View {
        VStack {
            Text("내 여행목록")
            List {
                HStack {
                    Image("tower")
                        .resizable()
                    VStack (alignment: .leading) {
                        Text("강릉 바다 구경")
                        Text("2024.07.21")
                        Spacer()
                        Text("낮에 다녀온 바다는 바람도 구름도 좋았다. 오랜만에 마음의 여유를 찾은 것 같다. 다음에는 가족들과 같이 와보고 싶다.")
                    }
                }
                .frame(height: 200)
                HStack {
                    Image("tower")
                        .resizable()
                    VStack (alignment: .leading) {
                        Text("강릉 바다 구경")
                        Text("2024.07.21")
                        Spacer()
                        Text("낮에 다녀온 바다는 바람도 구름도 좋았다. 오랜만에 마음의 여유를 찾은 것 같다. 다음에는 가족들과 같이 와보고 싶다.")
                    }
                }
                .frame(height: 200)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.purple, lineWidth: 2)
            )
            .padding()
        }
    }
}

#Preview {
    MyTravelListView()
}
