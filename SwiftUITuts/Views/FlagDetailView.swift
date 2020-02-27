//
//  FlagDetailView.swift
//  SwiftUITuts
//
//  Created by Gabriel on 2/14/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct FlagDetailView : View  {

    @Binding var flagVM : FlagViewModel

    var body: some View {
        VStack {
            Text(self.flagVM.flag)
            TextField("enter country", text: self.$flagVM.country)
            
            Button("submit") {
                self.flagVM.showModal.toggle()
            }
        }
    }
}
