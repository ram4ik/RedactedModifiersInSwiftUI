//
//  RepoView1.swift
//  RedactedModifiersInSwiftUI
//
//  Created by Ramill Ibragimov on 27.10.2020.
//

import SwiftUI

struct RepoView1: View {
    @Environment(\.redactionReasons) var reasons
    let repo: Repo
    
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 44, height: 44)
                    //.unredacted(when: !reasons.contains(.images))
                Text(String(repo.stars))
                    .font(.title)
                    //.unredacted(when: !reasons.contains(.text))
            }.foregroundColor(.red)
            
            VStack(alignment: .leading) {
                Text(repo.name)
                    .font(.headline)
                Text(repo.description)
                    .foregroundColor(.secondary)
            }//.unredacted(when: !reasons.contains(.text))
        }
    }
}

extension View {
    @ViewBuilder func unredected(when condition: Bool) -> some View {
        if condition {
            unredacted()
        } else {
            // Use default .placeholder or implement your custom effect
            redacted(reason: .placeholder)
        }
    }
}
