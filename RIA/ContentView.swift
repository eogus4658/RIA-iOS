//
//  ContentView.swift
//  RIA
//
//  Created by 이대현 on 7/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("홈")
                }
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
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

#Preview {
    ContentView()
}
