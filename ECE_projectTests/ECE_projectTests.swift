//
//  ECE_projectTests.swift
//  ECE_projectTests
//
//  Created by Shahriar Real on 2019-03-27.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import XCTest
@testable import ECE_project

//var test: HomeViewController!

class ECE_projectTests: XCTestCase {
    
    func test_login_with_username_but_no_password() {

                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let test = storyboard.instantiateInitialViewController() as! HomeViewController
                let _ = test.view


        test.userName!.text = "tim@gmail.com"
        test.passWord!.text = "1234"

        XCTAssertEqual(test.userName.text, "tim@gmail.com")
        XCTAssertEqual(test.passWord.text, "1234")
        
        

        
        
        
        
//
//        let app = XCUIApplication()
//        app.textFields["Enter Your Email"].tap()
//
//        let enterYourPasswordSecureTextField = app.secureTextFields["Enter Your Password"]
//        enterYourPasswordSecureTextField.tap()
//        enterYourPasswordSecureTextField.tap()
//        app.buttons["Login"].tap()
        
    }
        
        
               
   
    

    

    
    

        
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
