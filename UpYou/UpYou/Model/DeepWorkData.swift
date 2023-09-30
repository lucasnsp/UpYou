//
//  DeepWorkData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import Foundation

// MARK: - DeepWorkData
struct DeepWorkData: Codable {
    var focus: [Focus]?
}

// MARK: - Focus
struct Focus: Codable {
    var focusTitle, focusTopicOneTitle, focusTopicOne, focusTopicTwoTitle: String?
    var focusTopicTwo, focusTopicThreeTitle, focusTopicThree, focusTopicFourTitle: String?
    var focusTopicFour, focusTopicFiveTitle, focusTopicFive: String?
}
