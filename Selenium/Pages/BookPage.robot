*** Settings ***
Library    SeleniumLibrary  

*** Variables ***
${bookpageTitle}=    Books  
${FirstImage}=    //img[@src='https://demowebshop.tricentis.com/content/images/thumbs/0000130_computing-and-internet_125.jpeg']
${FirstBookAddingToCart}=    //input[@class='button-2 product-box-add-to-cart-button']  
${ShoppingCart}=    //a[@href='/cart']



*** Keywords ***
AddToCart
    Click link    ${ShoppingCart}    



