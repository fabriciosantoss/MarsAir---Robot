***Settings***
Library         SeleniumLibrary
Resource        ./Resource/resource.robot
Resource        ./PO/MainPage.robot
Resource        ./PO/ResultPage.robot
Test Setup      Go to MarsAir
Test Teardown   Close


***Test Cases***
An One-year trip without seats available
    [Tags]                                  without_Seat
    Given that the customer has booked a one-year trip and don't have more seats
    When the customer insert a valid promocional code
    And search the seats
    Then the MarsAir will be return the message informing don't have more seats

A Two-years and six months trip with seats available
    [Tags]                                  with_Seat
    Given that the customer has booked a two-year and six months with seats available
    When the customer insert a valid promocional code
    And search the seats
    Then the MarsAir will be return the message informing that have seats and informing the discount

A Less one-year trip
    [Tags]                                   Invalids 
    Given that the customer has booked a less one-year trip
    When the customer insert a valid promocional code
    And search the seats
    Then the MarsAir will be return the message informing that scheldule is not possible.

Trip without return
    [Tags]                                    Invalids
    Given that the customer has booked a trip without return
    When the customer insert a valid promocional code
    And search the seats
    Then the MarsAir will be return the message informing that scheldule is not possible.

Trip with invalid discount
    [Tags]                                    discount
    Given that the customer has booked a two-year and six months with seats available
    When the customer insert a invalid promocional code
    And search the seats
    Then the MarsAir will be return the message informing that promocional code is invalid