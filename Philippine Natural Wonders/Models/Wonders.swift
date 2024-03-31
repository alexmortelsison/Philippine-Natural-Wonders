//
//  Wonders.swift
//  Philippine Natural Wonders
//
//  Created by Alex Sison on 3/31/24.
//

import Foundation

struct Wonders: Identifiable {
    var id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
