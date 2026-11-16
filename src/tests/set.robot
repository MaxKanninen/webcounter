*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
When counter is set to 10 the value is ten
    Go To  ${HOME_URL}
    Click  button >> text=Paina
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa

When counter is set to 5 and button pressed the value is six
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  5
    Click  button >> text=Aseta
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 6 kertaa
