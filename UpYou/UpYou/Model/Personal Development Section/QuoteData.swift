//
//  QuoteData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 25/09/23.
//

import Foundation


// MARK: - QuoteData
struct QuoteData: Codable {
    var quotes: [Quote]?
}

// MARK: - Quote
struct Quote: Codable {
    var quote: String?
    var author: String?
}
