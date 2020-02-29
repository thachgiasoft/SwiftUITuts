//
//  GestureView.swift
//  SwiftUITuts
//
//  Created by Venkatesh on 2/29/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct GestureView: View {
    var body: some View {
        Text("Hello, World!")
            .frame(width: 200, height: 200)
            .background(Color.red)
            .gesture(TapGesture(count: 1).onEnded({ _ in
                print("hello")
            }))
    }
}

struct GestureView_Previews: PreviewProvider {
    static var previews: some View {
        GestureView()
    }
}
