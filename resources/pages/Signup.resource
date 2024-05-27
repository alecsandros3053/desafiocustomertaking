*** Settings ***

Documentation   Page de Signup

Library     Browser

*** Keywords ***

Fill Text in Signup
      
    [Arguments]     ${account}

    Sleep  5
    Fill Text       id=customer_firstname   ${account}[name] 
    Fill Text       id=customer_lastname    ${account}[name]
    Fill Text       id=passwd               ${account}[senha] 

Click in Submit Account

    Click    id=submitAccount

Obrigatory input

    [Arguments]     ${account}

    Sleep  5   
    Fill Text       id=customer_firstname   ${account}[name] 
    Fill Text       id=customer_lastname    ${account}[name]
     
    Get Text        xpath=//p[@class='pull-right required']     equal   *Required field


Fill Text Email
    
    [Arguments]     ${email}
    
    Fill Text       id=email_create     ${email}

Click Create User
  
   Click    id=SubmitCreate