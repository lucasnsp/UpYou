//
//  TdData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 12/10/23.
//

import Foundation

// MARK: - TdData
struct TdData: Codable {
    var tesouroDireto: [TesouroDireto]?
}

// MARK: - TesouroDireto
struct TesouroDireto: Codable {
    var tdTitle, tdTopicOneImage, tdTopicOneTitle, tdTopicOne: String?
    var tdTopicTwoTitle, tdTopicTwo, tdTopicThreeTitle, tdTopicThree: String?
    var tdiTopicOneImage, tdiTopicOneTitle, tdiTopicOne: String?
}
