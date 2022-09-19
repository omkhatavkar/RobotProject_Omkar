 *** Settings ***
Library    SeleniumLibrary
Resource    ../CommonVariables.robot



 


*** Keywords ***  
LOGIN
    
    Input Text    name=Email    omkhatavkar@gmail.com
    Input Text    name=Password    Omkar_123   
    Click Button    xpath=//input[@class='button-1 login-button' ] 
       
       
 
         
     

    
