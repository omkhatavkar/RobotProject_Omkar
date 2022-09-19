 *** Settings ***
Library    SeleniumLibrary
Resource    CommonVariables.robot

*** Keywords ***
SETUP
    
      Open Browser    ${URL}    ${BROWSER}
      Maximize Browser Window
      Delete All Cookies
      Set Selenium Implicit Wait    ${IMPLICIT_TIME}
      Set Selenium Timeout    ${TIMEOUT_TIME}
    