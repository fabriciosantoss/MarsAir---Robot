***Settings***
Library     SeleniumLibrary

**Variables***
${CboDeparting}            id:departing
${CboReturnig}             id:returning
${TxtPromocionalCode}      id:promotional_code
${BtnSearch}               xpath://dd//input[@value="Search"]


***Keywords***
Then the MarsAir will be return the message informing don't have more seats
    Page Should Contain             Sorry, there are no more seats available.

Then the MarsAir will be return the message informing that have seats and informing the discount
    Page Should Contain             Seats available!
    Page Should Contain             Promotional code  used: % discount!

Then the MarsAir will be return the message informing that scheldule is not possible. 
    Page Should Contain             Unfortunately, this schedule is not possible. Please try again.

Then the MarsAir will be return the message informing that promocional code is invalid
    Page Should Contain             Sorry, code  is not valid