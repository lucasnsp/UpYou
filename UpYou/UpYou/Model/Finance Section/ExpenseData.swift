//
//  ExpenseData.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 28/10/23.
//

import Foundation

struct expenseDB: Codable, Equatable {
    var expense: String
    var value: Int
    var anualExpense: Int
}
