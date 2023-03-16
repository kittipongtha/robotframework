*** Settings ***
Library    SeleniumLibrary
Library    String

Library    ../test_data/excel_handling.py

#common
Resource    ../variable/var_common.resource

#variables
Resource    ../variable/var_personal_loan_apply_page/var_personal_loan_apply_page.resource

#keywords
Resource    ../keyword/kw_personal_loan_apply_page.resource
