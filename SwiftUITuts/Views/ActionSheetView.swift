//
//  ActionSheetView.swift
//  SwiftUITuts
//
//  Created by Gabriel on 2/27/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct ActionSheetView: View {
   @State var isPresent = false
    var body: some View {
         
        Button(action: {
            self.isPresent = true
        }) {
           Text("here")
        }.actionSheet(isPresented: self.$isPresent) {
            ActionSheet(title: Text("sdadfa"),message: Text("hkhjkhghjkhjg"),buttons: [
                .cancel(),
                .default(Text("sure?")),
                .destructive(Text("vjhjh"))
            ])
        }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
