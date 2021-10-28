//
//  SearchBar.swift
//  SwiftUI_15
//
//  Created by Manjit on 03/10/2021.
//

import SwiftUI

struct SearchBar: View {
    let names = ["Holly","Rhonda","ted"]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResult, id: \.self){ name in
                    NavigationLink(destination: Text(name)) {
                        Text(name)
                    }
                }
            }.searchable(text: $searchText){
                Text("Hello").searchCompletion("test")
            }.navigationTitle("CONTACTS")
        }
    }
    var searchResult:[String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter{$0.contains( self.searchText)}
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
