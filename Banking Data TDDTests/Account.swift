//
//  Account.swift
//  Banking Data TDDTests
//
//  Created by Vito Borghi on 29/10/2023.
//

import Foundation

class Account {
    
    let name: String
    var balance: Double
    var dates: [String]
    
    func deposit (amount: Int) {
        
    }
    
    func withdraw(amount: Int){
        
    }
    
    func printStatement(){
        
    }
    
    init(name: String, balance: Double, dates: [String]) {
        self.name = name
        self.balance = balance
        self.dates = dates
    }
    
}
