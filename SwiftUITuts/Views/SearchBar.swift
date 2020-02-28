//
//  SearchBar.swift
//  SwiftUITuts
//
//  Created by Gabriel on 2/27/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import SwiftUI

struct SearchBar: UIViewRepresentable {
    
    @Binding var searchTerm : String
    
    class SearchCordinator : NSObject,UISearchBarDelegate {
        @Binding var text : String
        
         init(text : Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
    
    func makeCoordinator() -> SearchBar.SearchCordinator {
       return SearchCordinator(text: $searchTerm)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchbar = UISearchBar(frame: .zero)
        searchbar.delegate = context.coordinator
        return searchbar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
      //  uiView.text = searchTerm
    }

}

