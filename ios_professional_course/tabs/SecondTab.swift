//
//  SecondTab.swift
//  ios_professional_course
//
//  Created by Владимир Скоробогатько on 2.03.22.
//

import SwiftUI

struct SecondTab: View {
    
    @ObservedObject var objectsViewModel = ObjectInfoViewModel()
    @EnvironmentObject private var tabController: TabControllerModel
    
    var body: some View {
        NavigationView{
            VStack{
                List(objectsViewModel.objects, id: \.id) { object in
                    NavigationLink(destination: ObjectView(selectedObject: object)) {
                        Text(object.name)
                    }
                }
                if let selectedObject = tabController.selectedObject,
                   selectedObject <= objectsViewModel.objects.count - 1 {
                    NavigationLink(tag: selectedObject, selection: $tabController.selectedObject) {
                        ObjectView(selectedObject: objectsViewModel.objects[selectedObject])
                    } label: {
                        EmptyView()
                    }
                }
            }
            .navigationBarHidden(false)
            .navigationBarTitle("Objects")
        }
    }
}

struct SecondTab_Previews: PreviewProvider {
    static var previews: some View {
        SecondTab()
    }
}
