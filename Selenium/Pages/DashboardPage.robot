*** Settings ***
Library    SeleniumLibrary  

*** Keywords ***
Assign Leave       Click Element    class=quickLinkText
    
*** Variables ***
${BooksLink}=     //a[@href='/books']
${StoeTitle}=    Welcome to our store
${LaptopImage}=    //img[@src='https://demowebshop.tricentis.com/content/images/thumbs/0000224_141-inch-laptop_125.png']


*** Keywords ***

LOGOUT
    Click Link    //a[@href='/logout']
    Close Browser    

BookPageLink          
    Click Link    //a[@href='/books']     