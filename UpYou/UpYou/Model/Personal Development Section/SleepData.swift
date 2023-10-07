//
//  SleepData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 07/10/23.
//

import Foundation

// MARK: - SleepData
struct SleepData: Codable {
    var sleep: [Sleep]?
}

// MARK: - Sleep
struct Sleep: Codable {
    var sleepTitle, sleepTopicOneTitle, sleepTopicOneImage, sleepTopicOne: String?
    var sleepTopicTwoTitle, sleepTopicTwoImage, sleepTopicTwo, sleepTopicThreeTitle: String?
    var sleepTopicThreeImage, sleepTopicThree, sleepTopicFourTitle, sleepTopicFourImage: String?
    var sleepTopicFour, sleepTopicFiveTitle, sleepTopicFiveImage, sleepTopicFive: String?
    var sleepTopicSixTitle, sleepTopicSixImage, sleepTopicSix: String?
}
