*** Settings ***
Library    SeleniumLibrary  
Resource    ../CommonFunctionalities.robot
Resource    ../CommonVariables.robot
Resource    ../Pages/DashboardPage.robot
Resource    ../Pages/LoginPage.robot

*** Keywords ***
StoreTitleVerification    
    Page Should Contain        ${StoeTitle}  


*** Test Cases ***
VerifyDashboardPage
    
    SETUP
    LOGIN
    Run Keyword And Continue On Failure    StoreTitleVerification              
    Run Keyword And Continue On Failure    Page Should Contain Image    ${LaptopImage}    
    LOGOUT    
        
    

 
  