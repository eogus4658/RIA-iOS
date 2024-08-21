//
//  HomeView.swift
//  RIA
//
//  Created by 이대현 on 7/28/24.
//

import SwiftUI

struct HomeView: View {
    @State var tfPrompt: String = ""
    
    var mainImageViews: [Image] = [
        Image(systemName: "photo"),
        Image(systemName: "photo"),
        Image(systemName: "photo"),
        Image(systemName: "photo"),
        Image(systemName: "photo")
    ]
    
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                Text("근처 가볼만한 곳")
                    .font(.system(size: 22, weight: .bold))
                    .padding()
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(0..<5, id: \.self) { _ in
                            GeometryReader { geometry in
                                Image(systemName: "photo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.width)
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            
                        }
                    }
                    .frame(height: 200)
                }
                .padding()

                HStack {
                    Spacer(minLength: 20)
                    VStack (alignment: .leading) {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(
                                    width: 30,
                                    height: 30
                                )
                            Text("AI Search")
                                .font(.system(size: 25))
                                .padding()
                        }
                        .frame(alignment: .leading)
                        
                        Text("장소에 대해서 세분화합니다.")
                            .font(.system(size: 15))
                        Text("사진을 찍거나 갤러리에서 가져옵니다.")
                            .font(.system(size: 15))
                        Text("프롬프트에 원하는 분위기를 가져와보세요!")
                            .font(.system(size: 15))
                        HStack {
                            List {
                                Text("건축물")
                                    .font(.system(size: 17))
                                Text("휴양지")
                                    .font(.system(size: 17))
                            }
                            .frame(maxWidth: .infinity)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.black, lineWidth: 2)
                            )
                            Spacer()
                            List {
                                Text("서울")
                                    .font(.system(size: 17))
                                Text("인천")
                                    .font(.system(size: 17))
                            }
                            .frame(maxWidth: .infinity)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.black, lineWidth: 2)
                            )
                        }
                        .frame(height: 100)
                        .padding([.top, .bottom])
                        VStack (alignment: .leading) {
                            Text("프롬프트")
                            TextField("잔잔한 장소...", text: $tfPrompt)
                            
                        }
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.purple, lineWidth: 2)
                        )
                        HStack {
                            Button("사진 찍기") {}
                                .frame(maxWidth: .infinity)
                            Button("갤러리") {}
                                .frame(maxWidth: .infinity)
                        }
                        .padding()
                        Image(systemName: "photo")
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .aspectRatio(contentMode: .fill)
                            .padding()
                        
                        NavigationLink(destination: SearchResultView()) {
                            Text("AI Search")
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.purple, lineWidth: 2)
                    )
                    Spacer(minLength: 20)
                }
                Spacer(minLength: 20)
            }
        }
    }
}

#Preview {
    HomeView()
}
