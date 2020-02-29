//
//  GestureView.swift
//  SwiftUITuts
//
//  Created by Venkatesh on 2/29/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct GestureView: View {
    @State var offset : CGSize = .zero
    var body: some View {
        let drag =  DragGesture()
            .onChanged { self.offset = $0.translation}
            .onEnded {_ in
                if self.offset.width < -150 {
                    self.offset = .init(width: -1000, height: 0)
                } else if self.offset.width > 150 {
                    self.offset = .init(width: 1000, height: 0)
                }
                else {
                    self.offset =  .zero
                }
                
        }
        return Text("Hello, World!")
            .frame(width: 200, height: 300)
            .background(Color.red)
            .padding()
            .offset(x: self.offset.width, y: self.offset.height)
            .animation(.spring())
            .gesture(drag)
    }
}

struct GestureView_Previews: PreviewProvider {
    static var previews: some View {
        GestureView()
    }
}
