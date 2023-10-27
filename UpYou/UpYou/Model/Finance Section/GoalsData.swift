//
//  GoalsData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 27/10/23.
//

import Foundation

struct goalsDB: Codable, Equatable {
    var goal: String
    var value: Int
    var time: Int
    var monthlySavings: Int
}
