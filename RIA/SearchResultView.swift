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
            HStack {
                Text("RIA")
            }
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            
            VStack {
                
                
                HStack {
                    Image("tower")
                        .resizable()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                    VStack {
                        Text("Source")
                            .font(.system(size: 15))
                        Text("건축물, 문화 건축물")
                            .font(.system(size: 15))
                        Text("인천, 울산")
                            .font(.system(size: 15))
                        Text("잔잔한, 분위기 있는, 장엄한")
                            .font(.system(size: 15))
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
                                .padding()
                                .frame(width: 122, height: 212)
                            VStack {
                                Text("1. 인천 타워")
                                    .padding()
                                    .font(.system(size: 15))
                                Text("인천광역시 연수구 송도동 329")
                                    .font(.system(size: 15))
                                Text("영업 시간 : 영업 종료")
                                    .font(.system(size: 12))
                                Text("전화 번호 : 031-393-8918")
                                    .font(.system(size: 12))
                                Text("Site URL :")
                                    .font(.system(size: 12))
                                HStack {
                                    Button("Like"){}
                                    Button("BookMark"){}
                                }
                                HStack {
                                    Button("카페"){}
                                    Button("음식점"){}
                                    Button("관광지 추천"){}
                                }
                            }
                        }
                    }
                }
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
