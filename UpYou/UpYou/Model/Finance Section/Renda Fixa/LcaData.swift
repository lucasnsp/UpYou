//
//  LcaData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import Foundation

struct LcaDATA: Codable {
    var lca: [Lca]?
}

// MARK: - Lca
struct Lca: Codable {
    var lcaTitle, lcaTopicOneImage, lcaTopicOneTitle, lcaTopicOne: String?
    var lcaTopicTwoTitle, lcaTopicTwo, lcaTopicThreeTitle, lcaTopicThree: String?
}
