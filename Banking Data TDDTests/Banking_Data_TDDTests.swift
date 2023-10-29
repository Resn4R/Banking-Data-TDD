//
//  Banking_Data_TDDTests.swift
//  Banking Data TDDTests
//
//  Created by Vito Borghi on 29/10/2023.
//

import XCTest
@testable import Banking_Data_TDD

final class Banking_Data_TDDTests: XCTestCase {

    //1. Deposit into Account
    func testDepositIntoAccountWithZeroBalance() {
        let sampleAccount = Account()
        let sampleTransaction = Transaction(date: "29/10/23", amount: 100)
        
        sampleAccount.deposit(transaction: sampleTransaction)
        
        XCTAssertEqual(sampleAccount.balance, sampleTransaction.amount)
    }
    func testDepositIntoAccountWithPositiveBalance() {
        let sampleAccount = Account(balance: 100)
        let sampleTransaction = Transaction(date: "29/10/23", amount: 100)
        
        sampleAccount.deposit(transaction: sampleTransaction)
        
        XCTAssertEqual(sampleAccount.balance, sampleTransaction.amount+100)
    }
}
