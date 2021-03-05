***Settings***
Library     SeleniumLibrary

**Variables***
${URL}          https://marsair.thoughtworks-labs.net/fabriciasantos


***Keywords***

Go to MarsAir
    open browser               ${URL}      chrome
    Maximize Browser Window    

Close
    Close browser