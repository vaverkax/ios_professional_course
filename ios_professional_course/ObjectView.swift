//
//  ObjectView.swift
//  ios_professional_course
//
//  Created by Владимир Скоробогатько on 2.03.22.
//

import SwiftUI

struct ObjectView: View {
    
    let selectedObject: ObjectInfoModel
    var body: some View {
        Text(selectedObject.name)
    }
}

struct ObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectView(selectedObject: ObjectInfoModel(name: "test", description: "test"))
    }
}
