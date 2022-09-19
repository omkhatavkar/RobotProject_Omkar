*** Settings ***
Library    SeleniumLibrary  
Resource    ../CommonFunctionalities.robot
Resource    ../CommonVariables.robot
Resource    ../Pages/DashboardPage.robot
Resource    ../Pages/LoginPage.robot


    
*** Test Cases ***

SeleniumTest
     Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Press Keys    id=L2AGLb    ENTER    
    Input Text    name=q    Automation
    Sleep    2        
    Close Browser
    Log    Test Completed    

 
                             