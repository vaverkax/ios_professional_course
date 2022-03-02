//
//  ContentView.swift
//  ios_professional_course
//
//  Created by Владимир Скоробогатько on 24.02.22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var tabController = TabControllerModel()
    
    var body: some View {
        TabView(selection: $tabController.selectedTab) {
            FirstTab()
                .tabItem {
                    Image(systemName: "f.square.fill")
                    Text("First tab")
                }
                .tag(Tab.first)
            SecondTab()
                .tabItem {
                    Image(systemName: "s.square.fill")
                    Text("Second tab")
                }
                .tag(Tab.second)
            ThirdTab()
                .tabItem {
                    Image(systemName: "t.square.fill")
                    Text("Third tab")
                }
                .tag(Tab.third)
        }
        .environmentObject(tabController)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
