*** Settings ***
Resource    ../../import/import_personal_loan_apply_page.resource

*** Variables ***
&{loan_apply_form}
...    txt_name=id=txtName
...    txt_surname=id=txtSurName
...    txt_idnumber=id=txtCitizenID
...    txt_mobile=id=txtMobile
...    txt_email=id=txtEmail
...    ddl_occupation=xpath=//*[@id='zoneoccupation']/descendant::*[text()='กรุณาเลือกอาชีพ'][2]
...    lst_occupation=xpath=//*[@id='zoneoccupation']/descendant::*[text()='$replace_occupation'][2]
...    ddl_salary=xpath=//*[@id="salary"]/descendant::*[text()='กรุณาเลือกรายได้ต่อเดือน'][2]
...    lst_salary=xpath=//*[@id="salary"]/descendant::*[text()='$replace_salary'][2]
...    btn_submit=id=btnSave

${txt_expected}    xpath=//*[text()='$replace_expected']

