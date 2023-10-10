//
//  CdbData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 10/10/23.
//

import Foundation

// MARK: - CdbDATA
struct CdbDATA: Codable {
    var cdb: [Cdb]?
}

// MARK: - Cdb
struct Cdb: Codable {
    var cdbTitle, cdbTopicOneImage, cdbTopicOne, cdbTopicTwo: String?
    var cdbTopicThree, cdbTopicOneTitle, cdbTopicTwoTitle, cdbTopicThreeTitle: String?
    var cdbTopicFourTitle, cdbTopicFour: String?
}
