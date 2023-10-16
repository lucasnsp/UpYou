//
//  StocksData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 16/10/23.
//

import Foundation

// MARK: - StocksData
struct StocksData: Codable {
    var stocks: [Stock]?
}

// MARK: - Stock
struct Stock: Codable {
    var stocksTitle, stocksTopicOneImage, stocksTopicOneTitle, stocksTopicOne: String?
    var stocksTopicTwoTitle, stocksTopicTwo, stocksTopicThreeTitle, stocksTopicThree: String?
}
