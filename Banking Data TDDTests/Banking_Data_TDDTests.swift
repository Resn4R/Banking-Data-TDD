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
        
        sampleAccount.deposit(amount: 100)
        
        XCTAssertEqual(sampleAccount.balance, 100)
    }
    func testDepositIntoAccountWithPositiveBalance() {
        let sampleAccount = Account(balance: 100)
        sampleAccount.deposit(amount: 100)
        
        XCTAssertEqual(sampleAccount.balance, 200)
    }
    
    //2. Withdraw from an Account
    func testWithdrawFromAccount() {
        let sampleAccount = Account()
        sampleAccount.withdraw(amount: 100)
        
        XCTAssertEqual(sampleAccount.balance, -100)
    }
    func testWithdrawNegativeFromAccount() {
        let sampleAccount = Account()
        sampleAccount.withdraw(amount: -100)
        
        XCTAssertEqual(sampleAccount.balance, -100)
    }
}
