//
//  ShapeView.swift
//  SwiftUITuts
//
//  Created by Venkatesh on 2/29/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct ShapeView: View {
    
    var body: some View {
        CheckerBoard(rows: 10,cols: 10)
            .fill(Color.purple)
    }
}

struct  CheckerBoard : Shape {
    let rows : Int
    let cols : Int
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let rowSize = rect.height / CGFloat(rows)
        let colSize = rect.width / CGFloat(cols)
        
        for row in 0 ..< rows {
            for col in 0 ..< cols {
                if (row + col).isMultiple(of: 2) {
                    let startX = colSize * CGFloat(col)
                    let startY =  rowSize * CGFloat(row)
                    let rect = CGRect(x: startX, y: startY, width: colSize, height: rowSize)
                    path.addRect(rect)
                }
            }
        }
        return path
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ShapeView().previewDevice("iPhone 8")
            ShapeView().previewDevice("iPhone 11")
            ShapeView().previewDevice("iPhone 11 Pro")
        }
    }
}
