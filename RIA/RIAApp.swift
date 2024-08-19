//
//  RIAApp.swift
//  RIA
//
//  Created by 이대현 on 7/19/24.
//

import SwiftUI
import KakaoMapsSDK

@main
struct RIAApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear() {
                    SDKInitializer.InitSDK(appKey: "987c63b458ccdc1c5fecbf59c885f1e8")
                    print(SDKInitializer.GetAppKey())
//                    SDKInitializer.
                    print("init sdk")
                }
        }
    }
}
