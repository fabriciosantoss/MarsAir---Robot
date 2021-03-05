***Settings***
Library     SeleniumLibrary

**Variables***
${CboDeparting}            id:departing
${CboReturnig}             id:returning
${TxtPromocionalCode}      id:promotional_code
${BtnSearch}               xpath://dd//input[@value="Search"]


***Keywords***
Given that the customer has booked a one-year trip and don't have more seats
    Select From List By Value       ${CboDeparting}         0
    Select From List By Value       ${CboReturnig}          2

Given that the customer has booked a two-year and six months with seats available
    Select From List By Value       ${CboDeparting}         0
    Select From List By Value       ${CboReturnig}          5

Given that the customer has booked a less one-year trip
    Select From List By Value       ${CboDeparting}         0
    Select From List By Value       ${CboReturnig}          1

Given that the customer has booked a trip without return
    Select From List By Value       ${CboDeparting}         0

When the customer insert a valid promocional code
    Input Text                      ${TxtPromocionalCode}   FS9-SSA-009

When the customer insert a invalid promocional code
    Input Text                      ${TxtPromocionalCode}   AF9-FJK-4112

And search the seats
    Click button                    ${BtnSearch}



