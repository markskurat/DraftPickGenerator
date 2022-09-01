//
//  TeamNameModel.swift
//  DraftPicker
//
//  Created by Mark Skurat on 8/30/22.
//

import Foundation

struct TeamNameModel: Identifiable, Codable, Hashable {
    var id = UUID().uuidString
    var teamName: String
}
