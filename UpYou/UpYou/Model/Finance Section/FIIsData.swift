//
//  FIIsData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import Foundation

// MARK: - FIIsData
struct FIIsData: Codable {
    var fundosImobiliarios: [FundosImobiliario]?
}

// MARK: - FundosImobiliario
struct FundosImobiliario: Codable {
    var fiisTitle, fiisTopicOneImage, fiisTopicOneTitle, fiisTopicOne: String?
    var fiisTopicTwoTitle, fiisTopicTwo, fiisTopicThreeTitle, fiisTopicThree: String?
}
