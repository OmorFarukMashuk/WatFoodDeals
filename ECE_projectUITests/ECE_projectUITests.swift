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
        
        
//        let validUsername = "tim@gmail.com"
//        let validPassword = "1234"
//
//
//
//        let app = XCUIApplication()
//
//        let usernameTextField = app.textFields["Enter Your Email"]
//        usernameTextField.tap()
//
//        usernameTextField.typeText(validUsername)
//
//        let passwordTextField = app.secureTextFields["Enter Your Password"]
//        passwordTextField.tap()
//
//        passwordTextField.typeText(validPassword)
//
//        //        enterYourPasswordSecureTextField.tap()
//        //        enterYourPasswordSecureTextField.tap()
//
//        app.buttons["Login"].tap()
//
//        app.buttons["Screen Shot 2019 03 03 at 3.50"].tap()
        
        
        
        let app = XCUIApplication()
        
        app.buttons["New User? Sign Up>"].tap()
        
        let window = app.children(matching: .window).element(boundBy: 0)
        let element = window.children(matching: .other).element.children(matching: .other).element
        element.tap()
        element.children(matching: .textField).element(boundBy: 0).tap()
        element.children(matching: .textField).element(boundBy: 1).tap()
        app.textFields["Enter Your Preferred Password"].tap()
        element.tap()
        element.children(matching: .textField).element(boundBy: 3).tap()
        app.staticTexts["Name"].tap()
        app.staticTexts["Email (will be your User ID)"].tap()
        app.staticTexts["Password"].tap()
        app.staticTexts["Confirm Password"].tap()
        element.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Restaurant"]/*[[".segmentedControls.buttons[\"Restaurant\"]",".buttons[\"Restaurant\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Customer"]/*[[".segmentedControls.buttons[\"Customer\"]",".buttons[\"Customer\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Halal"].tap()
        
        let okButton = app.alerts["Your Selected Cuisine"].buttons["OK"]
        okButton.tap()
        app.buttons["Veg."].tap()
        okButton.tap()
        app.buttons["Kosher"].tap()
        okButton.tap()
        app.buttons["Gluten-free"].tap()
        okButton.tap()
        app.buttons["Continental"].tap()
        okButton.tap()
        app.buttons["Chinese"].tap()
        okButton.tap()
        app.buttons["Confirm"].tap()
        app.alerts["Failed"].buttons["OK"].tap()
        
        let button = app.buttons["Button"]
        button.tap()
        app.buttons["Continue as Guest>"].tap()
        app.buttons["All Deals"].tap()
        
        let backsButton = app.buttons["backs"]
        backsButton.tap()
        
        let optionsButton = app.buttons["OPTIONS"]
        optionsButton.tap()
        app.buttons["News"].tap()
        app.staticTexts["Mongolian Grill Wrap and fries for only $6"].tap()
        
        let element2 = window.children(matching: .other).element(boundBy: 5).children(matching: .other).element
        element2.tap()
        element2.tap()
        app.staticTexts["Anty's Kitchen 10% off on orders above 10$"].tap()
        app.staticTexts["Free Soup with Daily Special Lunch Deals"].tap()
        element2.tap()
        element2.tap()
        app.staticTexts["Upgrade to Special large size for free in orders over $6"].tap()
        app.staticTexts["Student Biriyani for $6"].tap()
        element2.tap()
        
        let screenShot20190303At350Button = app.buttons["Screen Shot 2019 03 03 at 3.50"]
        screenShot20190303At350Button.tap()
        optionsButton.tap()
        
        let locationsButton = app.buttons["Locations"]
        locationsButton.tap()
        screenShot20190303At350Button.tap()
        app.buttons["SHINWA"].tap()
        backsButton.tap()
        
        let auntyButton = app.buttons["Aunty"]
        auntyButton.tap()
        backsButton.tap()
        auntyButton.tap()
        backsButton.tap()
        app.buttons["Shinwa"].tap()
        backsButton.tap()
        app.buttons["Kabob"].tap()
        backsButton.tap()
        optionsButton.tap()
        locationsButton.tap()
        screenShot20190303At350Button.tap()
        optionsButton.tap()
        app.buttons["Sign-up now for more features>>>"].tap()
        app.buttons["Update your profile with more info>>>"].tap()
        button.tap()
        
        
        
        
        
    }

}
