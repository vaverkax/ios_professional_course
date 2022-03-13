//
//  FirstTab.swift
//  ios_professional_course
//
//  Created by Владимир Скоробогатько on 2.03.22.
//

import SwiftUI

struct FirstTab: View {
    
    @EnvironmentObject private var tabController: TabControllerModel
    
    var body: some View {
        Button("Go to second tab") {
            tabController.open(Tab.second)
        }
    }
}

struct FirstTab_Previews: PreviewProvider {
    static var previews: some View {
        FirstTab()
    }
}
