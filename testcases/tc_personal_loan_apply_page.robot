*** Settings ***
Resource    ../import/import_personal_loan_apply_page.resource

*** Test Cases ***
Invalid personal loan apply form
    @{get_name}=    excel_handling.Get Data Personal Loan Apply Page    name
    @{get_surname}=    excel_handling.Get Data Personal Loan Apply Page    surname
    @{get_identification_number}=    excel_handling.Get Data Personal Loan Apply Page    identification_number
    @{get_mobile}=    excel_handling.Get Data Personal Loan Apply Page    mobile
    @{get_email}=    excel_handling.Get Data Personal Loan Apply Page    email
    @{get_expected}=    excel_handling.Get Data Personal Loan Apply Page    expected
    @{get_occupation}=    excel_handling.Get Data Personal Loan Apply Page    occupation
    @{get_salary}=    excel_handling.Get Data Personal Loan Apply Page    salary
    FOR    ${name}    ${surname}    ${identification_number}    ${mobile}    ${email}    
    ...    ${expected}    ${occupation}    ${salary}    IN ZIP    
    ...    ${get_name}    ${get_surname}    ${get_identification_number}    ${get_mobile}    ${get_email}    
    ...    ${get_expected}    ${get_occupation}    ${get_salary}
        Set Test Message    ${name}
        Open personal loan apply page
        Fill In Loan Apply Form    
        ...    ${name}   
        ...    ${surname}    
        ...    ${identification_number}    
        ...    ${mobile}    
        ...    ${email}    
        ...    ${expected}    
        ...    ${occupation}   
        ...    ${salary} 
        Close Browser
    END


