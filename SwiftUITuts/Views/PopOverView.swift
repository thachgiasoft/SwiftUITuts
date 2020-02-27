//
//  PopOverView.swift
//  SwiftUITuts
//
//  Created by Gabriel on 2/27/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct PopOverView: View {
    @State var isPresent = false
     var body: some View {
          
         Button(action: {
             self.isPresent = true
         }) {
            Text("There?")
         }.popover(isPresented: self.$isPresent,arrowEdge: .leading) {
            Text("hello")
        }
    }
}

struct PopOverView_Previews: PreviewProvider {
    static var previews: some View {
        PopOverView()
    }
}
