//
//  GoldenRulesData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 09/10/23.
//

import Foundation

// MARK: - GoldenRulesData
struct GoldenRulesData: Codable {
    var rules: [Rule]?
}

// MARK: - Rule
struct Rule: Codable {
    var rulesTitle, rulesTopicOneTitle, rulesTopicOneImage, rulesTopicOne: String?
    var rulesTopicTwoTitle, rulesTopicTwoImage, rulesTopicTwo, rulesTopicThreeTitle: String?
    var rulesTopicThreeImage, rulesTopicThree, rulesTopicFourTitle, rulesTopicFourImage: String?
    var rulesTopicFour, rulesTopicFiveTitle, rulesTopicFiveImage, rulesTopicFive: String?
}
