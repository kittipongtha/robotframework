*** Settings ***
Library    SeleniumLibrary
Library    String

Library    ../test_data/excel_handling.py

#common
Resource    ../common/common.resource

#variables
Resource    ../variables/var_personal_loan_apply_page/var_personal_loan_apply_page.resource

#keywords
Resource    ../keywords/kw_personal_loan_apply_page.resource
