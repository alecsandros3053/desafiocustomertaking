*** Settings ***

Documentation   Page de Signup

Library     Browser


*** Keywords ***

Click Menu Login
  
   Click   css=.login

Fill Text Login Correct
  
   [Arguments]      ${account}        

   Fill Text        id=email    ${account}[email]
   Fill Text        id=passwd   ${account}[senha]

Fill Text Login Invalid

   [Arguments]      ${account}         

   Fill Text        id=email    ${account}[email]
   Fill Text        id=passwd   ${account}[senha]


Click Button Submit

   Click   id=SubmitLogin
   

Get Text Menu Login
   
   Get Text   css=h1  equal   MY ACCOUNT

Get Text Login Fail
   
    Get Text    xpath=//div[@class='alert alert-danger']/ol/li  equal   Authentication failed.


