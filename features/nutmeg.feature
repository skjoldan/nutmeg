Feature: Nutmeg.com

Scenario: TestItOut
Given "http://www.nutmeg.com" is open
When I enter email adress "skjoldan@hotmail.com" and click "TEST IT OUT"
Then I am shown at lets get started page
When I click on Account type "General"
When I click on goal type "Just invest"
When I give the fund the name "Jonas TestItOut"
When I click the button "NEXT"
Then I am shown let build new fund page