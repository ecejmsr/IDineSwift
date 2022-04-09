//
//  ContentView.swift
//  IDine
//
//  Created by Jose Rodriguez on 4/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
        
        NavigationView {
            List{
                ForEach(menu) { section in
                    Section(header: Text(section.name), content: {
                        ForEach(section.items) { item in
                            NavigationLink(destination: ItemDetail(item: item)) {
                                ItemRow(item: item)
                            }
                        }	
                    })
                    
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
