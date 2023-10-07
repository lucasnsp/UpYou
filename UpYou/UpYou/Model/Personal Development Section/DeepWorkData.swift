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
    var focusTitle, focusTopicOneTitle, focusTopicOneImage, focusTopicOne: String?
    var focusTopicTwoTitle, focusTopicTwoImage, focusTopicTwo, focusTopicThreeTitle: String?
    var focusTopicThreeImage, focusTopicThree, focusTopicFourTitle, focusTopicFourImage: String?
    var focusTopicFour, focusTopicFiveTitle, focusTopicFiveImage, focusTopicFive: String?
}

