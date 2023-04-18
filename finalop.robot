*** Settings ***
Library     SeleniumLibrary
Resource  ../resources/booking.robot
*** Test Cases ***
book
    open my bookmyshow      ${siteurl1}     ${url}
    clickbookmyshow
    popup
    bookticket
    payment
    details     ${emailid}  ${numberp}
    close
