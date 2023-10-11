//
//  LciData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import Foundation

// MARK: - LciDATA
struct LciDATA: Codable {
    var lci: [Lci]?
}

// MARK: - Lci
struct Lci: Codable {
    var lciTitle, lciTopicOneImage, lciTopicOneTitle, lciTopicOne: String?
    var lciTopicTwoTitle, lciTopicTwo, lciTopicThreeTitle, lciTopicThree: String?
}
