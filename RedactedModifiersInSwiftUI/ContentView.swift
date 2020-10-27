//
//  ContentView.swift
//  RedactedModifiersInSwiftUI
//
//  Created by Ramill Ibragimov on 27.10.2020.
//

import SwiftUI

struct ContentView: View {
    @StateObject var store = Store(service: .init())
    
    var body: some View {
        /*
        HStack {
            RepoView(repo: .mock)
            Divider()
            RepoView(repo: .mock)
                .redacted(reason: .placeholder)
        }*/
        
        List(store.repos, id: \.self) { repo in
            RepoView(repo: repo)
        }
        .onAppear(perform: {
            store.fetch()
        })
        .redacted(reason: store.isLoading ? .placeholder : [])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
