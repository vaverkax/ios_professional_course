//
//  ObjectInfoViewModel.swift
//  ios_professional_course
//
//  Created by Владимир Скоробогатько on 2.03.22.
//

import Foundation
import SwiftUI

struct ObjectInfoModel: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}

final class ObjectInfoViewModel: ObservableObject {
    
    @Published private(set) var objects = [
        ObjectInfoModel(name: "First Object", description: "Description for the first object"),
        ObjectInfoModel(name: "Second Object", description: "Description for the second object"),
        ObjectInfoModel(name: "Third Object", description: "Description for the third object")
    ]
}
