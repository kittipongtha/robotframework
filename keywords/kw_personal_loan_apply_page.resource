*** Settings ***
Resource    ../import/import_personal_loan_apply_page.resource

*** Keywords ***
Open personal loan apply page
    Open Browser    ${url_personal_loan_apply_page}    ${browser}
    Maximize Browser Window

Fill in loan apply form
    [Arguments]    ${name}    ${surname}    ${idnumber}    ${mobile}    ${email}    ${expected}    
    ...    ${select_occupation}    ${select_salary}    
    Log    ${name}|${surname}|${idnumber}|${mobile}|${email}|${expected}|${select_occupation}|${select_salary}  
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${btn_accept_pdpa}
    Run Keyword And Ignore Error    Click Button    ${btn_accept_pdpa}
    Wait Until Element Is Visible    ${loan_apply_form}[txt_name]    
    Input Text    ${loan_apply_form}[txt_name]    ${name}    True
    Input Text    ${loan_apply_form}[txt_surname]    ${surname}    True
    Input Text    ${loan_apply_form}[txt_idnumber]    ${idnumber}    True
    Input Text    ${loan_apply_form}[txt_mobile]    ${mobile}    True
    Input Text    ${loan_apply_form}[txt_email]    ${email}    True
    Run Keyword If    "${select_occupation}" != "${empty}"  
    ...    Selected ocupation    ${select_occupation}
    Run Keyword If    "${select_salary}" != "${empty}"
    ...    Selected salary    ${select_salary}
    Click Button    ${loan_apply_form}[btn_submit]
    ${replace_data_expected}=    Replace String    
    ...    ${txt_expected}    $replace_expected    ${expected}
    Wait Until Element Is Visible    ${replace_data_expected}
    Scroll Element Into View    ${replace_data_expected}
    Capture Element Screenshot    ${replace_data_expected}

Selected ocupation
    [Arguments]    ${select_occupation}
    Wait Until Element Is Visible    ${loan_apply_form}[ddl_occupation]
    Click Element    ${loan_apply_form}[ddl_occupation]
    ${replace_data_occupation}=    Replace String    
    ...    ${loan_apply_form}[lst_occupation]    $replace_occupation    ${select_occupation}
    Wait Until Element Is Visible    ${replace_data_occupation}
    Click Element    ${replace_data_occupation}

Selected salary
    [Arguments]    ${select_salary}
    Wait Until Element Is Visible    ${loan_apply_form}[ddl_salary]
    Click Element    ${loan_apply_form}[ddl_salary]
    ${replace_data_salary}=    Replace String    
    ...    ${loan_apply_form}[lst_salary]    $replace_salary    ${select_salary}
    Wait Until Element Is Visible    ${replace_data_salary}
    Scroll Element Into View    ${replace_data_salary}
    Click Element    ${replace_data_salary}
    