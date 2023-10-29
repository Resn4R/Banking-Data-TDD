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
        balance += amount
        
        let transaction = Transaction(date: "29/10/23", amount: amount, balanceAfterTransaction: balance)
        
        transactions.append(transaction)
    }
    
    func withdraw (amount: Int){
        
        balance += -abs(amount)

        let transaction = Transaction(date: "29/10/23", amount: -abs(amount), balanceAfterTransaction: balance)
        
        transactions.append(transaction)
    }
    
    func printStatement(){
        
        print( "DATE       | AMOUNT  | BALANCE ")
        
        transactions.forEach { transaction in
            
            //let formattedAmount = String(format: "%.2f", transaction.amount)
            
            print("\(transaction.date) | \(transaction.amount) | \(transaction.balanceAfterTransaction)")
        }
    }
    
    init(balance: Int = 0, transactions: [Transaction] = []) {
        self.balance = balance
        self.transactions = transactions
    }
}
