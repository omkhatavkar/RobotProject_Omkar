*** Settings ***
Library    SeleniumLibrary  

Suite Setup    Log    I am inside TestSuite SetUp
Suite Teardown    Log    I am inside TesSuite Teardown
Test Setup    Log  I am inside Test SetUp
Test Teardown    Log    I am inside Test Teardown


*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com  

    
*** Keywords ***
LOGIN 
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword   admin123
    Click Button    id=btnLogin 
    
*** Test Cases ***
FirstTest
   [Tags]     Smoke
    Log    First test
    
SecondTest
    [Tags]     Sanity
    Log    Second test
    
ThirdTest
    Log    Third test
    

# SeleniumTest
    # Open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Press Keys    id=L2AGLb    ENTER    
    # Input Text    name=q    Automation
    # Sleep    2        
    # Close Browser
    # Log    Test Completed    

# SampleLoginTest
    # [Documentation]     samplelogin test
    # Open Browser     ${URL}    chrome
    # Set Browser Implicit Wait    5 
    # LOGIN
    # Title Should Be    OrangeHRM    
    # Click Link    id=welcome 
    # Click Element    link=Logout
    # Close Browser
    # Log    Test Completed
                           
    