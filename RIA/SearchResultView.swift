//
//  SearchResultView.swift
//  RIA
//
//  Created by 이대현 on 8/16/24.
//

import SwiftUI

struct SearchResultView: View {
    // 카카오맵 뷰 appear 상태 관리 변수
    @State var draw: Bool = false
    
    var body: some View {
        VStack {
            HeaderView()
            VStack {
                HStack {
                    Image("tower")
                        .resizable()
                        .cornerRadius(15)
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(.black, lineWidth: 1))
                    VStack(alignment: .leading) {
                        Text("Source")
                            .font(.system(size: 15))
                            .foregroundStyle(.purple)
                        Spacer()
                            .frame(height: 20)
                        Text("·  건축물, 문화 건축물")
                            .font(.system(size: 15))
                            .foregroundStyle(.purple)
                        Text("·  인천, 울산")
                            .font(.system(size: 15))
                            .foregroundStyle(.purple)
                        Text("·  잔잔한, 분위기 있는")
                            .font(.system(size: 15))
                            .foregroundStyle(.purple)
                    }
                    .frame(maxWidth: .infinity)
                    
                }
                .padding()
                .frame(height: 150)
                
                ScrollView(.horizontal, showsIndicators: true) {
                    LazyHStack {
                        HStack {
                            Image("tower")
                                .resizable()
                                .cornerRadius(15)
                                .padding()
                                .frame(width: 122, height: 212)
                            VStack (alignment: .leading) {
                                Text("1. 인천 타워")
                                    .padding()
                                    .font(.system(size: 15))
                                Text("인천광역시 연수구 송도동 329")
                                    .font(.system(size: 15))
                                Spacer()
                                    .frame(height: 10)
                                Text("영업 시간 : 영업 종료")
                                    .font(.system(size: 12))
                                Text("전화 번호 : 031-393-8918")
                                    .font(.system(size: 12))
                                Text("Site URL : None")
                                    .font(.system(size: 12))
                                HStack {
                                    Button("Like"){}
                                        .padding()
                                    Button("BookMark"){}
                                        .padding()
                                }
                                HStack {
                                    Button("카페"){}
                                        .padding()
                                    Button("음식점"){}
                                        .padding()
                                    Button("관광지 추천"){}
                                        .padding()
                                }
                            }
                        }
                    }
                }
                .overlay(
                    Rectangle()
                        .stroke(.black, lineWidth: 2)
                )
                .padding()
                Text("인천 타워 근처의 카페들을 지도로 표시하였습니다.")
                Text("반경 300m 내에 있는 9개의 장소를 나타냅니다.")
                KaKaoMapView(draw: $draw).onAppear(perform: {
                    self.draw = true
                }).onDisappear(perform: {
                    self.draw = false
                }).frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.purple, lineWidth: 2)
            )
        }
        .padding()
    }
}

#Preview {
    SearchResultView()
}
