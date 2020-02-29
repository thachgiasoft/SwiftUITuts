//
//  TopTabBarView.swift
//  SwiftUITuts
//
//  Created by Venkatesh on 2/29/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct TopTabBarView: View {
    @State var selectedTab = 2
    @State var arr = ["camera","calls","chats"]
    var body: some View {
        VStack {
            Picker("Tab",selection: self.$selectedTab) {
                ForEach(0..<self.arr.count) { index in
                    Text(self.arr[index]).tag(index)
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("Selected : \(self.arr[selectedTab])")
        }
    }
}

struct TopTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopTabBarView()
    }
}
