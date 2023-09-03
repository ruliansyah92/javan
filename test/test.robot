*** Settings ***
Library         Selenium2Library
Library         String
Library         Collections
Library         BuiltIn
Suite Setup     Set Suite Documentation    test
Resource        ../resources/PO/test.robot

*** Test Cases ***
Filter Portofolio
    Begin Web Test
    Click Portofolio
    Click Sub Portofolio
    Click Tipe Klien
    Verify Tipe Klien