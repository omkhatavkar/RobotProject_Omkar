*** Settings ***
Library    SeleniumLibrary  
Resource    ../CommonFunctionalities.robot
Resource    ../CommonVariables.robot
Resource    ../Pages/DashboardPage.robot
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/BookPage.robot
Resource    ../Pages/ShoppingPage.robot


*** Test Cases ***

Adding Book To Cart
    SETUP
    LOGIN
    Click Link    ${BooksLink} 
    Run Keyword And Continue On Failure    Click Button    ${FirstBookAddingToCart} 
    AddToCart       
    Page Should Contain    ${ShoppingPageTitle} 
    Select Checkbox    ${TermAndCondition}
    Click Button   ${CheckOut}
    Page Should Contain   ${CheckOutPageTitle}   
    LOGOUT   
    

