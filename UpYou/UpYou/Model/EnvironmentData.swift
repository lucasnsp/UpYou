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
    var environmentTitle, environmentTopicOneTitle, environmentTopicOne, environmentTopicTwoTitle: String?
    var environmentTopicTwo, environmentTopicThreeTitle, environmentTopicThree, environmentTopicFourTitle: String?
    var environmentTopicFour, environmentTopicFiveTitle, environmentTopicFive, environmentTopicSixTitle: String?
    var environmentTopicSix: String?
}
