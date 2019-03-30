//
//  ECE_projectUITests.swift
//  ECE_projectUITests
//
//  Created by Shahriar Real on 2019-03-27.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import XCTest
@testable import ECE_project


class ECE_projectUITests: XCTestCase {
    
    
    
    func logintest(){
        
        
        let validUsername = "tim@gmail.com"
        let validPassword = "1234"
        
        
        
        let app = XCUIApplication()
        
        let usernameTextField = app.textFields["Enter Your Email"]
        usernameTextField.tap()
        
        usernameTextField.typeText(validUsername)
        
        let passwordTextField = app.secureTextFields["Enter Your Password"]
        passwordTextField.tap()
        
        passwordTextField.typeText(validPassword)
        
//        enterYourPasswordSecureTextField.tap()
//        enterYourPasswordSecureTextField.tap()
        
        app.buttons["Login"].tap()
    
        
        
    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        
        let validUsername = "tim@gmail.com"
        let validPassword = "1234"
        
        
        
        let app = XCUIApplication()
        
        let usernameTextField = app.textFields["Enter Your Email"]
        usernameTextField.tap()
        
        usernameTextField.typeText(validUsername)
        
        let passwordTextField = app.secureTextFields["Enter Your Password"]
        passwordTextField.tap()
        
        passwordTextField.typeText(validPassword)
        
        //        enterYourPasswordSecureTextField.tap()
        //        enterYourPasswordSecureTextField.tap()
        
        app.buttons["Login"].tap()
       
        app.buttons["Screen Shot 2019 03 03 at 3.50"].tap()
        
        
        
        
        
        
        
    }

}
