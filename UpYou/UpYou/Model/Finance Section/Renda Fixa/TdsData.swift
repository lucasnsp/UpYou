//
//  TdsData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import Foundation

// MARK: - TdsData
struct TdsData: Codable {
    var tesouroSelic: [TesouroSelic]?
}

// MARK: - TesouroSelic
struct TesouroSelic: Codable {
    var tdsTitle, tdsTopicOneImage, tdsTopicOneTitle, tdsTopicOne: String?
    var tdsTopicTwoTitle, tdsTopicTwo, tdsTopicThreeTitle, tdsTopicThree: String?
}
