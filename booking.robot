*** Settings ***
Library     SeleniumLibrary
Variables  ../login/booking.py
*** Variables ***
${siteurl1}      https://in.bookmyshow.com/explore/home/hyderabad
${url}      chrome
${emailid}    tutorial@gmail.com
${numberp}     9876543210
*** Keywords ***
open my bookmyshow
    [Arguments]  ${siteurl1}     ${url}
    open browser    ${siteurl1}     ${url}
    maximize browser window
clickbookmyshow
    click element  ${txt_name}
    wait until element is visible   ${bookticket}
    click element  ${bookticket}
popup
    wait until element is visible  ${popup}    10
    click element   ${popup}
    #sleep   3
    #handle alert    dismiss
bookticket
    click element  ${showtime}
    click element   ${accept}
    set selenium speed  2
    click element  ${seats}
    scroll element into view    ${scroll}
    click element   ${selected}
payment
    click element  ${pay}
    click element   ${total}
    click element   ${accept2}
    sleep   5
details
    [Arguments]  ${emailid}  ${numberp}
    input text  ${mail}   ${emailid}
    input text  ${number}   ${numberp}
close
    close all browsers

