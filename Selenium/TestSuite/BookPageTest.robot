*** Settings ***
Library    SeleniumLibrary  
Resource    ../CommonFunctionalities.robot
Resource    ../CommonVariables.robot
Resource    ../Pages/DashboardPage.robot
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/BookPage.robot


*** Test Cases ***
Verifying Book Page 
    SETUP
    LOGIN
    Click Link    ${BooksLink}    
    Page Should Contain    ${bookpageTitle}   
    Run Keyword And Continue On Failure    Page Should Contain Image    ${FirstImage}
    LOGOUT     
         
    

