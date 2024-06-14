*** Settings ***
Documentation        MovCad Online

Resource        ../resources/base.resource

Test Setup        Start Session
Test Teardown     Take Screenshot


*** Test Cases ***

Site deve estar online
    [Tags]    online

    Get Title       equal    MovCad