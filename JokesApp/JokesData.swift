//
//  JokesData.swift
//  JokesApp
//
//  Created by Fatih Filizol on 13.11.2022.
//

import Foundation

// MARK: - Welcome
struct Welcome: Identifiable, Codable {
    var id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
