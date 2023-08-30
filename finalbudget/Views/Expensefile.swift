//
//  Expensefile.swift
//  finalbudget
//
//  Created by Sonjhalyns Augustin on 4/28/23.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var  id =  UUID()
    let name: String
    let type: String
    let amount: Double
    let date: Date  
        
    init(name: String, type: String, amount: Double, date: Date = Date()) {
        self.name = name
        self.type = type
        self.amount = amount
        self.date = date
    }
}

struct TotalAmountItem: Codable{
    let tamount: Double
}
