//
//  SearchableListView.swift
//  SwiftUITuts
//
//  Created by Gabriel on 2/27/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct SearchableListView: View {
    @State var arr = ["ven","man","bal","shan","bala","balcha"]
    @State var searchTerm = ""
    var body: some View {
        NavigationView {
            List {
                SearchBar(searchTerm: $searchTerm)
                ForEach(arr.filter({
                    searchTerm.isEmpty ? true : $0.localizedStandardContains(searchTerm)
                }),id: \.self) { item in
                    Text(item)
                }
            }.navigationBarItems(trailing: EditButton())
        }
    }
}

struct SearchableListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchableListView()
    }
}
