//
//  TabView.swift
//  SwiftUITuts
//
//  Created by Venkatesh on 2/29/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selectedTab = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MapView(cordinates: pisa.locCoordinates)
                .tabItem {
                    Text("one")
            }.tag(0)
            Text("second screen")
                .tabItem {
                    Text("two")
            }.tag(1)
            Image("london")
                .tabItem {
                    Text("three")
            }.tag(2)
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
