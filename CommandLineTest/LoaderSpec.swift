//
//  LoaderSpec.swift
//  CommandLineSample
//
//  Created by Renato Matos on 02/06/16.
//  Copyright © 2016 Renato Matos. All rights reserved.
//

import XCTest
@testable import CommandLineSample

class LoaderSpec: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testLoader() {
        
        let loader = Loader()
        
        XCTAssertNotNil(loader, "should not be nil")
        
        let object = "/Users/renatomatos/Documents/Dev/iOS/CommandLineSample/CommandLineSample/assets/input.csv"
        
        let loadedObject = loader.loadFile(object, returnWithDelimiter: false)
        
        XCTAssertNotNil(loadedObject, "should not be nil")
        
    }
    
}
