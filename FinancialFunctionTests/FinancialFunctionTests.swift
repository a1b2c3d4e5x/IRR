//
//  FinancialFunctionTests.swift
//  FinancialFunctionTests
//
//  Created by GuoHao on 2017/3/3.
//  Copyright © 2017年 cgh. All rights reserved.
//

import XCTest
@testable import FinancialFunction

class FinancialFunctionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIRR() {

        // IRR
        IRR.test1()
        IRR.test2()
        IRR.test3()
        IRR.test4()
        IRR.test5()
        IRR.test6()
        IRR.test7()
        IRR.test8()
        IRR.test9()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
