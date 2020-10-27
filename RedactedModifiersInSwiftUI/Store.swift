//
//  Store.swift
//  RedactedModifiersInSwiftUI
//
//  Created by Ramill Ibragimov on 27.10.2020.
//

import Foundation

final class Store: ObservableObject {
    @Published private(set) var repos: [Repo]
    @Published private(set) var isLoading = false
    
    private let service: GithubService
    init(
        service: GithubService,
        initialState: [Repo] = Array(repeating: .mock, count: 5)
    ) {
        self.repos = initialState
        self.service = service
    }
    
    func fetch() {
        isLoading = true
        service
            //.fetchRepos(matching: "SwiftUI")
            //.replaceError(with: [])
            //.receive(on: DispatchQueue.main)
            //.handleEvents(receiveCompletion: { [weak sel] _ in self?.isLoading = false})
            //.assign(to: &$repos)
    }
}
