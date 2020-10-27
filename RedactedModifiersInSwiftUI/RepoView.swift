//
//  RepoView.swift
//  RedactedModifiersInSwiftUI
//
//  Created by Ramill Ibragimov on 27.10.2020.
//

import SwiftUI

struct RepoView: View {
    let repo: Repo
    
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 44, height: 44)
                Text(String(repo.stars))
                    .font(.title)
            }.foregroundColor(.red)
            
            VStack(alignment: .leading) {
                Text(repo.name)
                    .font(.headline)
                Text(repo.description)
                    .foregroundColor(.secondary)
            }
        }
    }
}

extension Repo {
    static let mock = Repo(
        name: "SwiftUICharts",
        description: "A simple line and bar charting library that support accessibility written using SwiftUI",
        stars: 579)
}
