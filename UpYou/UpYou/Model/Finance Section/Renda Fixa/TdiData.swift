//
//  TdiData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import Foundation

// MARK: - TdiData
struct TdiData: Codable {
    var tesouroIpca: [TesouroIpca]?
}

// MARK: - TesouroIpca
struct TesouroIpca: Codable {
    var tdiTitle, tdiTopicOneImage, tdiTopicOneTitle, tdiTopicOne: String?
    var tdiTopicTwoTitle, tdiTopicTwo, tdiTopicThreeTitle, tdiTopicThree: String?
}
