//
//  ContentView.swift
//  RIA
//
//  Created by 이대현 on 7/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack (alignment: .leading) {
                HStack {
                    HStack {
                        Image("logo")
                        Image("logolabel")
                    }
                    .frame(maxWidth: .infinity)
                    Spacer()
                        .frame(maxWidth: .infinity)
                    Text("로그인")
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                        .frame(width: 150)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.purple, lineWidth: 2)
                        )
                }
                .padding()
                .frame(height: 80)
                TabView {
                    HomeView()
                        .tabItem {
                            Image(systemName: "house")
                            Text("홈")
                        }
                    MyTravelListView()
                        .padding()
                        .tabItem {
                            Image(systemName: "leaf.fill")
                            Text("내 여행목록")
                        }
                    Text("The First Tab")
                        .tabItem {
                            Image(systemName: "plus.circle.fill")
                            Text("Plus")
                        }
                    Text("The First Tab")
                        .tabItem {
                            Image(systemName: "scribble.variable")
                            Text("장소 추천")
                        }
                    Text("The First Tab")
                        .tabItem {
                            Image(systemName: "gearshape.fill")
                            Text("설정")
                        }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
