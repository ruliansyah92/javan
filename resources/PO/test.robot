*** Settings ***
Documentation    test
Library          Selenium2Library
Library          String
Library          Collections
Resource         ../variable/test.robot

*** Keywords ***
Begin Web Test
    Open Browser                ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed          ${delay}
    Title Should Be             Home | PT Javan Cipta Solusi

Click Portofolio
    Click Element    xpath:/html/body/div[1]/div/div/div[2]/ul/li[5]/div/button/span

Click Sub Portofolio
    Sleep    2
    Click Element    xpath:/html/body/div[1]/div/div/div[2]/ul/li[5]/div/ul/li[1]/a

Click Tipe Klien
    Sleep    2
    Click Element    xpath:/html/body/div[2]/section[1]/div/div[2]/div[2]/div[1]/button
    Sleep    3
    Click Element    xpath:/html/body/div[2]/section[1]/div/div[2]/div[2]/div[2]/div/a[2]

Verify Tipe Klien
    Sleep    2
    Element Text Should Be    xpath:/html/body/div[2]/section[2]/div/div[5]/div[2]/a        SMEP Pemerintah Probolinggo