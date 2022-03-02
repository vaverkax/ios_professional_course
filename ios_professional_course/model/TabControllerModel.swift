//
//  TabControllerModel.swift
//  ios_professional_course
//
//  Created by Владимир Скоробогатько on 2.03.22.
//

import Foundation
import SwiftUI

enum Tab {
    case first, second, third
}

final class TabControllerModel: ObservableObject {
    @Published var selectedTab = Tab.first
    @Published var selectedObject: Int?
    
    func open(_ tab: Tab){
        selectedTab = tab
        selectedObject = 2
    }
}
