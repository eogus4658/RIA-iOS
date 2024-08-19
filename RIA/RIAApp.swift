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
                    SDKInitializer.InitSDK(appKey: "b8b2577e24db63e18aa8202b62132540")
                    print(SDKInitializer.GetAppKey())
//                    SDKInitializer.
                    print("init sdk")
                }
        }
    }
}
