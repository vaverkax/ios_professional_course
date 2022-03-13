//
//  ios_professional_courseApp.swift
//  ios_professional_course
//
//  Created by Владимир Скоробогатько on 24.02.22.
//

import SwiftUI

@main
struct ios_professional_courseApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .active:
                print("active")
            case .background:
                print("background")
            case .inactive:
                print("inactive")
            @unknown default:
                print("default switch case")
            }
        }
    }
}
