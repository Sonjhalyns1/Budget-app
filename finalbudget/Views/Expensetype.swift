//
//  Expensetype.swift
//  finalbudget
//
//  Created by Sonjhalyns Augustin on 4/28/23.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "ExpenseItems")
            }
        }
    }
    @Published var monthlyAmount = 0.0 {
        didSet {
            UserDefaults.standard.set(monthlyAmount, forKey: "MonthlyAmount")
        }
    }

    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "ExpenseItems"){
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems){
                items = decodedItems
            }
        }
        monthlyAmount = UserDefaults.standard.double(forKey: "MonthlyAmount")

    }
    
    
    
    var totalAmount: Double {
            items.reduce(0) { $0 + $1.amount }
        }
}


