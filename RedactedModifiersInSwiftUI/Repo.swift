//
//  Repo.swift
//  RedactedModifiersInSwiftUI
//
//  Created by Ramill Ibragimov on 27.10.2020.
//

import Foundation

struct Repo: Hashable, Decodable {
    let name: String
    let description: String
    let stars: Int
}
