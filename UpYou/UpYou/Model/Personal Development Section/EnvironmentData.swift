//
//  EnvironmentData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import Foundation

// MARK: - EnvironmentData
struct EnvironmentData: Codable {
    var environment: [Environment]?
}

// MARK: - Environment
struct Environment: Codable {
    var environmentTitle, environmentTopicOneTitle, environmentTopicOneImage, environmentTopicOne: String?
    var environmentTopicTwoTitle, environmentTopicTwoImage, environmentTopicTwo, environmentTopicThreeTitle: String?
    var environmentTopicThreeImage, environmentTopicThree, environmentTopicFourTitle, environmentTopicFourImage: String?
    var environmentTopicFour, environmentTopicFiveTitle, environmentTopicFiveImage, environmentTopicFive: String?
    var environmentTopicSixTitle, environmentTopicSixImage, environmentTopicSix: String?
}
