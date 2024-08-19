//
//  KaKaoMapView.swift
//  RIA
//
//  Created by 이대현 on 8/19/24.
//

import KakaoMapsSDK
import SwiftUI

struct KaKaoMapView: UIViewRepresentable {
    @Binding var draw: Bool
    
    // UIView를 상속한 KMViewContainer를 생성한다.
    func makeUIView(context: Self.Context) -> KMViewContainer {
        let view: KMViewContainer = KMViewContainer()
        view.sizeToFit()
        context.coordinator.createController(view)
        print("after createController")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            context.coordinator.controller?.prepareEngine()
        }
        
        return view
    }
    
    /// Updates the presented `UIView` (and coordinator) to the latest
    /// configuration.
    /// draw가 true로 설정되면 엔진을 시작하고 렌더링을 시작한다.
    /// draw가 false로 설정되면 렌더링을 멈추고 엔진을 stop한다.
    func updateUIView(_ uiView: KMViewContainer, context: Context) {
        if draw {
            context.coordinator.controller?.activateEngine()
        } else {
            context.coordinator.controller?.resetEngine()
        }
    }
    
    func makeCoordinator() -> KakaoMapCoordinator {
        return KakaoMapCoordinator()
    }
    
    /// Cleans up the presented `UIView` (and coordinator) in
    /// anticipation of their removal.
    static func dismantleUIView(_ uiView: KMViewContainer, coordinator: KakaoMapCoordinator) {
        
    }
    
    class KakaoMapCoordinator: NSObject, MapControllerDelegate {
        var controller: KMController?
        var first: Bool
        
        override init() {
            first = true
            super.init()
        }
        
        // KMController 객체 생성해주는 함수
        func createController(_ view: KMViewContainer) {
            controller = KMController(viewContainer: view)
            controller?.delegate = self
        }
        
        // KMControllerDelegate Protocol method구현
        // 엔진 생성 및 초기화 이후, 렌더링 준비가 완료되면 아래 addViews를 호출한다.
        // 원하는 뷰를 생성한다.
        func addViews() {
            print("addViews")
            let defaultPosition: MapPoint = MapPoint(longitude: 127.108678, latitude: 37.402001)
            let mapviewInfo: MapviewInfo = MapviewInfo(viewName: "mapview", viewInfoName: "map", defaultPosition: defaultPosition)
                        
            controller?.addView(mapviewInfo)
        }
        
        //addView 성공 이벤트 delegate. 추가적으로 수행할 작업을 진행한다.
        func addViewSucceeded(_ viewName: String, viewInfoName: String) {
            print("addViewSucceeded")
        }
        
        //addView 실패 이벤트 delegate. 실패에 대한 오류 처리를 진행한다.
        func addViewFailed(_ viewName: String, viewInfoName: String) {
            print("addViewFailed")
        }
        
        // 인증 실패 이벤트
        func authenticationFailed(_ errorCode: Int, desc: String) {
            print("error code: \(errorCode)")
            print("\(desc)")
//            controller?.prepareEngine() //인증 재시도
        }
        
        func authenticationSucceeded() {
            print("authenticationSucceeded")
            print(controller?.isEnginePrepared)
            print(controller?.isEngineActive)
            if let controller = controller,
               !controller.isEngineActive {
                controller.activateEngine()
            }
         
        }
        
        // KMViewContainer 리사이징 될 때 호출.
        func containerDidResized(_ size: CGSize) {
            let mapView: KakaoMap? = controller?.getView("mapview") as? KakaoMap
            mapView?.viewRect = CGRect(origin: CGPoint(x: 0.0, y: 0.0), size: size)
            if first {
                let cameraUpdate: CameraUpdate = CameraUpdate.make(target: MapPoint(longitude: 127.108678, latitude: 37.402001), zoomLevel: 18, mapView: mapView!)
                mapView?.moveCamera(cameraUpdate)
                first = false
            }
        }
    }
}
