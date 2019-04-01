//
//  ECE_projectUITests.swift
//  ECE_projectUITests
//
//  Created by Omor Faruk Mashuk on 2019-03-31.
//  Copyright © 2019 Ibrahim  Khalil. All rights reserved.
//

import XCTest

class ECE_projectUITests: XCTestCase {
    
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
    
    
    //let app = XCUIApplication()
    
    
//    func TestValidLogin(){
//        let validUserName = "mash@gmail.com"
//        let validPassword = "1234"
//        
//        let userNameTextField = app.textFields["Enter Your Email"]
//        userNameTextField.tap()
//        userNameTextField.typeText(validUserName)
//        
//        let userPassTextField = app.secureTextFields["Enter Your Password"]
//        userPassTextField.tap()
//        userPassTextField.typeText(validPassword)
//        
//        app.buttons["Login"].tap()
//        app.buttons["All Deals"].tap()
//        
//        let slider = app.sliders["50%"]
//        slider.swipeLeft()
//        
//        let refreshButton = app.buttons["Refresh"]
//        refreshButton.tap()
//        
//        let backsButton = app.buttons["backs"]
//        backsButton.tap()
//        app.buttons["Halal"].tap()
//        slider.swipeLeft()
//        refreshButton.tap()
//        backsButton.tap()
//        app.buttons["Kosher"].tap()
//        backsButton.tap()
//        app.buttons["Continental"].tap()
//        backsButton.tap()
//        app.buttons["Veg."].tap()
//        backsButton.tap()
//        app.buttons["Chinese"].tap()
//        backsButton.tap()
//        app.buttons["Gluten-free"].tap()
//        backsButton.tap()
//        app.buttons["Aunty"].tap()
//        slider.swipeLeft()
//        refreshButton.tap()
//        //app.sliders["9%"]/*@START_MENU_TOKEN@*/.press(forDuration: 0.6);/*[[".tap()",".press(forDuration: 0.6);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        //refreshButton.tap()
//        backsButton.tap()
//        
//        let shinwaButton = app.buttons["Shinwa"]
//        shinwaButton.tap()
//        backsButton.tap()
//        app.buttons["Kabob"].tap()
//        backsButton.tap()
//        app.buttons["Mongolian"].tap()
//        backsButton.tap()
//        app.buttons["Alley"].tap()
//        backsButton.tap()
//        
//        let optionsButton = app.buttons["OPTIONS"]
//        optionsButton.tap()
//        app.buttons["News"].tap()
//        
//        let screenShot20190303At350Button = app.buttons["Screen Shot 2019 03 03 at 3.50"]
//        screenShot20190303At350Button.tap()
//        optionsButton.tap()
//        
//        let socialButton = app.buttons["Social"]
//        socialButton.tap()
//        screenShot20190303At350Button.tap()
//        optionsButton.tap()
//        app.buttons["Locations"].tap()
//        screenShot20190303At350Button.tap()
//        optionsButton.tap()
//        app.buttons["LogOut"].tap()
//        
//
//    }
//    
//    func TestInvalidLogin(){
//        let validUserName = ""
//        let validPassword = ""
//        
//        let userNameTextField = app.textFields["Enter Your Email"]
//        userNameTextField.tap()
//        userNameTextField.typeText(validUserName)
//        
//        let userPassTextField = app.secureTextFields["Enter Your Password"]
//        userPassTextField.tap()
//        userPassTextField.typeText(validPassword)
//        
//        app.buttons["Login"].tap()
//        app.alerts["Failed"].buttons["OK"].tap()
//        
//        
//    }
//    
//    
//    func TestCustomerView(){
//        TestValidLogin()
//        TestInvalidLogin()
//        
//    }
//    
//    func TestGuestView(){
//        app.buttons["New User? Sign Up>"].tap()
//        
//        let button = app.buttons["Button"]
//        button.tap()
//        
//        let continueAsGuestButton = app.buttons["Continue as Guest>"]
//        continueAsGuestButton.tap()
//        app.buttons["All Deals"].tap()
//        app.sliders["50%"].swipeLeft()
//        app.buttons["Refresh"].tap()
//        app.buttons["backs"].tap()
//        app.buttons["AUNTY"].tap()
//        
//        let okButton = app.alerts["Registration Required"].buttons["OK"]
//        okButton.tap()
//        app.buttons["SHINWA"].tap()
//        okButton.tap()
//        app.buttons["KABOB"].tap()
//        okButton.tap()
//        app.buttons["Sign-up now for more features>>>"].tap()
//        button.tap()
//        continueAsGuestButton.tap()
//        
//        let optionsButton = app.buttons["OPTIONS"]
//        optionsButton.tap()
//        app.buttons["News"].tap()
//        
//        let screenShot20190303At350Button = app.buttons["Screen Shot 2019 03 03 at 3.50"]
//        screenShot20190303At350Button.tap()
//        optionsButton.tap()
//        app.buttons["Social"].tap()
//        screenShot20190303At350Button.tap()
//        optionsButton.tap()
//        app.buttons["Locations"].tap()
//        app.buttons["Screen Shot 2019 03 03 at 3.50"].tap()
//        app.buttons["Button"].tap()
//    }
//    
//    
//    func SignUpPageTest(){
//    
//        //required field test
//        app.buttons["New User? Sign Up>"].tap()
//        
//        app.textFields["Enter Name"].tap()
//        app.textFields["Enter email"].tap()
//        app.textFields["Enter Your Preferred Password"].tap()
//        app.textFields["Type Password Again"].tap()
//        
//        let app2 = app
//        app2/*@START_MENU_TOKEN@*/.buttons["Restaurant"]/*[[".segmentedControls.buttons[\"Restaurant\"]",".buttons[\"Restaurant\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app2/*@START_MENU_TOKEN@*/.buttons["Customer"]/*[[".segmentedControls.buttons[\"Customer\"]",".buttons[\"Customer\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app.buttons["Halal"].tap()
//        app.alerts["Your Selected Cuisine"].buttons["OK"].tap()
//        
//        app.buttons["Confirm"].tap()
//        app.alerts["Failed"].buttons["OK"].tap()
//        app.buttons["Button"].tap()
//        
//        
//        //existing user test
//        app.buttons["New User? Sign Up>"].tap()
//        let newName = "mash"
//        let newPassword = "1234"
//        let newEmail = "mash@gmail.com"
//        
//        
//        let nameTextField = app.textFields["Enter Name"]
//        let emailTextField = app.textFields["Enter email"]
//        let passTextField = app.textFields["Enter Your Preferred Password"]
//        let confirmPassTextField = app.textFields["Type Password Again"]
//        
//        nameTextField.tap()
//        nameTextField.typeText(newName)
//        
//        emailTextField.tap()
//        emailTextField.typeText(newEmail)
//        passTextField.tap()
//        passTextField.typeText(newPassword)
//        confirmPassTextField.tap()
//        confirmPassTextField.typeText(newPassword)
//        
//        app2/*@START_MENU_TOKEN@*/.buttons["Restaurant"]/*[[".segmentedControls.buttons[\"Restaurant\"]",".buttons[\"Restaurant\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app2/*@START_MENU_TOKEN@*/.buttons["Customer"]/*[[".segmentedControls.buttons[\"Customer\"]",".buttons[\"Customer\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app.buttons["Halal"].tap()
//        app.alerts["Your Selected Cuisine"].buttons["OK"].tap()
//        
//        app.buttons["Confirm"].tap()
//        app.alerts["Failed"].buttons["OK"].tap()
//        app.buttons["Button"].tap()
//        
//        
//        //new registration test
////        app.buttons["New User? Sign Up>"].tap()
////        newName = "test"
////        newPassword = "1234"
////        newEmail = "testt@gmail.com"
////        
////        nameTextField.tap()
////        nameTextField.typeText(newName)
////        
////        emailTextField.tap()
////        emailTextField.typeText(newEmail)
////        passTextField.tap()
////        passTextField.typeText(newPassword)
////        confirmPassTextField.tap()
////        confirmPassTextField.typeText(newPassword)
////        
////        app2/*@START_MENU_TOKEN@*/.buttons["Restaurant"]/*[[".segmentedControls.buttons[\"Restaurant\"]",".buttons[\"Restaurant\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
////        app2/*@START_MENU_TOKEN@*/.buttons["Customer"]/*[[".segmentedControls.buttons[\"Customer\"]",".buttons[\"Customer\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
////        app.buttons["Halal"].tap()
////        app.alerts["Your Selected Cuisine"].buttons["OK"].tap()
////        
////        app.buttons["Confirm"].tap()
////        app.alerts["Done"].buttons["OK"].tap()
////        app.buttons["Button"].tap()
//        
//    }
//    
//    
//    func RestaurantView(){
//        
//        let validUserName = "ak@gmail.com"
//        let validPassword = "1234"
//        
//        let userNameTextField = app.textFields["Enter Your Email"]
//        userNameTextField.tap()
//        userNameTextField.typeText(validUserName)
//        
//        let userPassTextField = app.secureTextFields["Enter Your Password"]
//        userPassTextField.tap()
//        userPassTextField.typeText(validPassword)
//        
//        app.buttons["Login"].tap()
//        
//        //        let dishName = "Naan"
//        //        let dishPrice = "2.5"
//        //        let dishType = "Halal"
//        //        let dishMessage = "2% off"
//        
//        let dishName = ""
//        let dishPrice = ""
//        let dishType = ""
//        let dishMessage = ""
//        
//        let itemsNavigationBar = app.navigationBars["Items"]
//        itemsNavigationBar.buttons["Add"].tap()
//        let dishNameText = app.textFields["Name of Deal"]
//        dishNameText.tap()
//        dishNameText.typeText(dishName)
//        
//        let dishTypeText = app.textFields["Price of Deal"]
//        dishTypeText.tap()
//        dishTypeText.typeText(dishPrice)
//        
//        let dealTypesText = app.textFields["Type of Deal"]
//        dealTypesText.tap()
//        app/*@START_MENU_TOKEN@*/.pickerWheels["Halal"]/*[[".pickers.pickerWheels[\"Halal\"]",".pickerWheels[\"Halal\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        dealTypesText.typeText(dishType)
//        
//        let dealMessageText = app.textFields["Place Your Special Deals Eg. Buy One Get 50% off on the next item"]
//        dealMessageText.tap()
//        dealMessageText.typeText(dishMessage)
//        
//        app.buttons["Post"].tap()
//        if(dishName == "" || dishPrice == "" || dishType == ""){
//            
//            app.alerts["Failed"].buttons["OK"].tap()
//        }
//        else{
//            app.alerts["Done"].buttons["OK"].tap()
//        }
//        
//        
//        app.buttons["Button"].tap()
//        itemsNavigationBar.buttons["LogOut"].tap()
//        
//    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct result
        
//        TestCustomerView()
//        TestGuestView()
//        SignUpPageTest()
//        RestaurantView()
        
    
        let app = XCUIApplication()
        
        
        
        //valid login
        var validUserName = "mash@gmail.com"
        var validPassword = "1234"
        
        var userNameTextField = app.textFields["Enter Your Email"]
        userNameTextField.tap()
        userNameTextField.typeText(validUserName)
        
        var userPassTextField = app.secureTextFields["Enter Your Password"]
        userPassTextField.tap()
        userPassTextField.typeText(validPassword)
        
        app.buttons["Login"].tap()
        app.buttons["All Deals"].tap()
        
        let slider = app.sliders["50%"]
        slider.swipeLeft()
        
        let refreshButton = app.buttons["Refresh"]
        refreshButton.tap()
        
        let backsButton = app.buttons["backs"]
        backsButton.tap()
        app.buttons["Halal"].tap()
        slider.swipeLeft()
        refreshButton.tap()
        backsButton.tap()
        app.buttons["Kosher"].tap()
        backsButton.tap()
        app.buttons["Continental"].tap()
        backsButton.tap()
        app.buttons["Veg."].tap()
        backsButton.tap()
        app.buttons["Chinese"].tap()
        backsButton.tap()
        app.buttons["Gluten-free"].tap()
        backsButton.tap()
        app.buttons["Aunty"].tap()
        slider.swipeLeft()
        refreshButton.tap()
        //app.sliders["9%"]/*@START_MENU_TOKEN@*/.press(forDuration: 0.6);/*[[".tap()",".press(forDuration: 0.6);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        //refreshButton.tap()
        backsButton.tap()
        
        let shinwaButton = app.buttons["Shinwa"]
        shinwaButton.tap()
        backsButton.tap()
        app.buttons["Kabob"].tap()
        backsButton.tap()
        app.buttons["Mongolian"].tap()
        backsButton.tap()
        app.buttons["Alley"].tap()
        backsButton.tap()
        
        var optionsButton = app.buttons["OPTIONS"]
        optionsButton.tap()
        app.buttons["News"].tap()
        
        var screenShot20190303At350Button = app.buttons["Screen Shot 2019 03 03 at 3.50"]
        screenShot20190303At350Button.tap()
        optionsButton.tap()
        
        let socialButton = app.buttons["Social"]
        socialButton.tap()
        screenShot20190303At350Button.tap()
        optionsButton.tap()
        app.buttons["Locations"].tap()
        screenShot20190303At350Button.tap()
        optionsButton.tap()
        app.buttons["LogOut"].tap()
        
        
        
        
        //Invalid login
        validUserName = ""
        validPassword = ""
        
        userNameTextField = app.textFields["Enter Your Email"]
        userNameTextField.tap()
        userNameTextField.typeText(validUserName)
        
        userPassTextField = app.secureTextFields["Enter Your Password"]
        userPassTextField.tap()
        userPassTextField.typeText(validPassword)
        
        app.buttons["Login"].tap()
        app.alerts["Failed"].buttons["OK"].tap()
        
        
        
        //guest view
        app.buttons["New User? Sign Up>"].tap()
        
        let button = app.buttons["Button"]
        button.tap()
        
        let continueAsGuestButton = app.buttons["Continue as Guest>"]
        continueAsGuestButton.tap()
        app.buttons["All Deals"].tap()
        app.sliders["50%"].swipeLeft()
        app.buttons["Refresh"].tap()
        app.buttons["backs"].tap()
        app.buttons["AUNTY"].tap()
        
        let okButton = app.alerts["Registration Required"].buttons["OK"]
        okButton.tap()
        app.buttons["SHINWA"].tap()
        okButton.tap()
        app.buttons["KABOB"].tap()
        okButton.tap()
        app.buttons["Sign-up now for more features>>>"].tap()
        button.tap()
        continueAsGuestButton.tap()
        
        optionsButton = app.buttons["OPTIONS"]
        optionsButton.tap()
        app.buttons["News"].tap()
        
        screenShot20190303At350Button = app.buttons["Screen Shot 2019 03 03 at 3.50"]
        screenShot20190303At350Button.tap()
        optionsButton.tap()
        app.buttons["Social"].tap()
        screenShot20190303At350Button.tap()
        optionsButton.tap()
        app.buttons["Locations"].tap()
        app.buttons["Screen Shot 2019 03 03 at 3.50"].tap()
        app.buttons["Button"].tap()
        
        
        
        //sign up page test
        //required field test
        app.buttons["New User? Sign Up>"].tap()
        
        app.textFields["Enter Name"].tap()
        app.textFields["Enter email"].tap()
        app.textFields["Enter Your Preferred Password"].tap()
        app.textFields["Type Password Again"].tap()
        
        let app2 = app
        app2/*@START_MENU_TOKEN@*/.buttons["Restaurant"]/*[[".segmentedControls.buttons[\"Restaurant\"]",".buttons[\"Restaurant\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app2/*@START_MENU_TOKEN@*/.buttons["Customer"]/*[[".segmentedControls.buttons[\"Customer\"]",".buttons[\"Customer\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Halal"].tap()
        app.alerts["Your Selected Cuisine"].buttons["OK"].tap()
        
        app.buttons["Confirm"].tap()
        app.alerts["Failed"].buttons["OK"].tap()
        app.buttons["Button"].tap()
        
        
        //existing user test
        app.buttons["New User? Sign Up>"].tap()
        let newName = "mash"
        let newPassword = "1234"
        let newEmail = "mash@gmail.com"
        
        
        let nameTextField = app.textFields["Enter Name"]
        let emailTextField = app.textFields["Enter email"]
        let passTextField = app.textFields["Enter Your Preferred Password"]
        let confirmPassTextField = app.textFields["Type Password Again"]
        
        nameTextField.tap()
        nameTextField.typeText(newName)
        
        emailTextField.tap()
        emailTextField.typeText(newEmail)
        passTextField.tap()
        passTextField.typeText(newPassword)
        confirmPassTextField.tap()
        confirmPassTextField.typeText(newPassword)
        
        app2/*@START_MENU_TOKEN@*/.buttons["Restaurant"]/*[[".segmentedControls.buttons[\"Restaurant\"]",".buttons[\"Restaurant\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app2/*@START_MENU_TOKEN@*/.buttons["Customer"]/*[[".segmentedControls.buttons[\"Customer\"]",".buttons[\"Customer\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Halal"].tap()
        app.alerts["Your Selected Cuisine"].buttons["OK"].tap()
        
        app.buttons["Confirm"].tap()
        app.alerts["Failed"].buttons["OK"].tap()
        app.buttons["Button"].tap()
        
        
        
        //restaurantview test
        
        
        validUserName = "ak@gmail.com"
        validPassword = "1234"
        
        userNameTextField = app.textFields["Enter Your Email"]
        userNameTextField.tap()
        userNameTextField.typeText(validUserName)
        
        userPassTextField = app.secureTextFields["Enter Your Password"]
        userPassTextField.tap()
        userPassTextField.typeText(validPassword)
        
        app.buttons["Login"].tap()
        
        //        let dishName = "Naan"
        //        let dishPrice = "2.5"
        //        let dishType = "Halal"
        //        let dishMessage = "2% off"
        
        let dishName = ""
        let dishPrice = ""
        let dishType = ""
        let dishMessage = ""
        
        let itemsNavigationBar = app.navigationBars["Items"]
        itemsNavigationBar.buttons["Add"].tap()
        let dishNameText = app.textFields["Name of Deal"]
        dishNameText.tap()
        dishNameText.typeText(dishName)
        
        let dishTypeText = app.textFields["Price of Deal"]
        dishTypeText.tap()
        dishTypeText.typeText(dishPrice)
        
        let dealTypesText = app.textFields["Type of Deal"]
        dealTypesText.tap()
        app/*@START_MENU_TOKEN@*/.pickerWheels["Halal"]/*[[".pickers.pickerWheels[\"Halal\"]",".pickerWheels[\"Halal\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        dealTypesText.typeText(dishType)
        
        let dealMessageText = app.textFields["Place Your Special Deals Eg. Buy One Get 50% off on the next item"]
        dealMessageText.tap()
        dealMessageText.typeText(dishMessage)
        
        app.buttons["Post"].tap()
        if(dishName == "" || dishPrice == "" || dishType == ""){
            
            app.alerts["Failed"].buttons["OK"].tap()
        }
        else{
            app.alerts["Done"].buttons["OK"].tap()
        }
        
        
        app.buttons["Button"].tap()
        itemsNavigationBar.buttons["LogOut"].tap()

 
        
        
        
    }
    
    
    
    
}
