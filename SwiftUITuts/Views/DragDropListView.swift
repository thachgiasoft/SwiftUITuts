//
//  DragDropList.swift
//  SwiftUITuts
//
//  Created by Gabriel on 2/27/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct DragDropListView: View {
    
    @State var arr = ["ven","man","bal","shan"]
    var body: some View {
        NavigationView {
            List {
                ForEach(arr,id: \.self) { item in
                    Text(item)
                }.onMove(perform: move)
                    .onDelete { (indexSet) in
                        self.arr.remove(atOffsets: indexSet)
                }
            }.navigationBarItems(trailing: EditButton())
        }
    }
    
    func move(indexSet : IndexSet, index: Int) {
        self.arr.move(fromOffsets: indexSet, toOffset: index)
    }
}

//struct DragDropList_Previews: PreviewProvider {
//    static var previews: some View {
//        DragDropList()
//    }
//}
