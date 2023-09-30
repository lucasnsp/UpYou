//
//  BooksData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 29/09/23.
//

import Foundation


// MARK: - BooksData
struct BooksData: Codable {
    var books: [Book]?
}

// MARK: - Book
struct Book: Codable {
    var bookImage, bookName, bookDescription, bookScore: String?
}
