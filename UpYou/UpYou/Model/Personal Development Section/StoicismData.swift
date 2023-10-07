//
//  StoicismData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 05/10/23.
//

import Foundation


// MARK: - StoicismData
struct StoicismData: Codable {
    var stoicism: [Stoicism]?
}

// MARK: - Stoicism
struct Stoicism: Codable {
    var stoicismTitle, stoicismTopicOneTitle, stoicismTopicOneImage, stoicismTopicOne: String?
    var stoicismTopicTwoTitle, stoicismTopicTwoImage, stoicismTopicTwo, stoicismTopicThreeTitle: String?
    var stoicismTopicThreeImage, stoicismTopicThree, stoicismTopicFourTitle, stoicismTopicFourImage: String?
    var stoicismTopicFour, stoicismTopicFiveTitle, stoicismTopicFiveImage, stoicismTopicFive: String?
}
