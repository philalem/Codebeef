//
//  ContentView.swift
//  Codebeef
//
//  Created by Phillip LeMaster on 8/3/20.
//  Copyright © 2020 Phillip LeMaster. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1 ... 10, id: \.self) { index in
                    NavigationLink(destination: Text("\(index)").frame(maxWidth: .infinity, maxHeight: .infinity)) {
                        Text("Link \(index)")
                    }
                }
            }
        }.listStyle(SidebarListStyle()).frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

