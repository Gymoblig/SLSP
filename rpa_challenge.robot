*** Settings ***
Library           RPA.Excel.Files
Library           Browser

*** Variables ***
${HEADLESS}       False

*** Tasks ***
Nacitanie z challenge.xlsx
    Open Workbook    ${CURDIR}/challenge.xlsx
    ${challenge}=    Read Worksheet As Table    header=True
    Close Workbook

    New Browser    headless=${HEADLESS}
    New Page       https://www.rpachallenge.com
    Click          xpath=//button[text()='Start']

    FOR    ${row}    IN    @{challenge}
        Fill Text    xpath=//label[contains(.,'First Name')]/following::input[1]      ${row}[First Name]
        Fill Text    xpath=//label[contains(.,'Last Name')]/following::input[1]       ${row}[Last Name]
        Fill Text    xpath=//label[contains(.,'Email')]/following::input[1]           ${row}[Email]
        Fill Text    xpath=//label[contains(.,'Role in Company')]/following::input[1]  ${row}[Role in Company]
        Fill Text    xpath=//label[contains(.,'Address')]/following::input[1]         ${row}[Address]
        Fill Text    xpath=//label[contains(.,'Company Name')]/following::input[1]    ${row}[Company Name]
        Fill Text    xpath=//label[contains(.,'Phone')]/following::input[1]           ${row}[Phone Number]
        Click        xpath=//input[@type='submit']
    END

