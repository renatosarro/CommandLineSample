//
//  ParserSpec.swift
//  CommandLineSample
//
//  Created by Renato Matos on 02/06/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import XCTest
@testable import CommandLineSample

class ParserSpec: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testParser() {
        
        let parser = Parser()
        
        XCTAssertNotNil(parser, "should not be nil")
        
        let object = "/Users/renatomatos/Documents/Dev/iOS/CommandLineSample/CommandLineSample/assets/input.csv,/Users/renatomatos/Documents/Dev/iOS/CommandLineSample/CommandLineSample/assets/transacoes.csv"
        
        let parsedObject = parser.parsePath(object)
        
        XCTAssertNotNil(parsedObject, "should not be nil")
        
    }
    
}
