//
//  HabitsData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 03/10/23.
//

import Foundation

// MARK: - HabitsData
struct HabitsData: Codable {
    var habits: [Habit]?
}

// MARK: - Habit
struct Habit: Codable {
    var habitsTitle, habitsTopicOneTitle, habitsTopicOneImage, habitsTopicOne: String?
    var habitsTopicTwoTitle, habitsTopicTwoImage, habitsTopicTwo, habitsTopicThreeTitle: String?
    var habitsTopicThreeImage, habitsTopicThree, habitsTopicFourTitle, habitsTopicFourImage: String?
    var habitsTopicFour, habitsTopicFiveTitle, habitsTopicFiveImage, habitsTopicFive: String?
    var habitsTopicSixTitle, habitsTopicSixImage, habitsTopicSix, habitsTopicSevenTitle: String?
    var habitsTopicSevenImage, habitsTopicSeven, habitsTopicEightTitle, habitsTopicEightImage: String?
    var habitsTopicEight, habitsTopicNineTitle, habitsTopicNineImage, habitsTopicNine: String?
}
