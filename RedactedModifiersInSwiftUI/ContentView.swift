//
//  ContentView.swift
//  RedactedModifiersInSwiftUI
//
//  Created by Ramill Ibragimov on 27.10.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            RepoView(repo: .mock)
            Divider()
            RepoView(repo: .mock)
                .redacted(reason: .placeholder)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
