//
//  Account.swift
//  Banking Data TDDTests
//
//  Created by Vito Borghi on 29/10/2023.
//

import Foundation

class Account {
    var balance = 0
    var transactions: [Transaction] = []
    
    func deposit (amount: Int) {
        let transaction = Transaction(date: "29/10/23", amount: amount)
        
        balance += transaction.amount
        transactions.append(transaction)
    }
    
    func withdraw (amount: Int){
        let transaction = Transaction(date: "29/10/23", amount: amount)
        balance -= abs(transaction.amount)
        transactions.append(transaction)
    }
    
    func printStatement(){
        
    }
    
    init(balance: Int = 0, transactions: [Transaction] = []) {
        self.balance = balance
        self.transactions = transactions
    }
}
