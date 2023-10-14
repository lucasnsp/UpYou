//
//  CriptoData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import Foundation

// MARK: - CriptoData
struct CriptoData: Codable {
    var criptoMoedas: [CriptoMoeda]?
}

// MARK: - CriptoMoeda
struct CriptoMoeda: Codable {
    var criptoTitle, criptoTopicOneImage, criptoTopicOneTitle, criptoTopicOne: String?
    var criptoTopicTwoTitle, criptoTopicTwo, criptoTopicThreeTitle, criptoTopicThree: String?
}
