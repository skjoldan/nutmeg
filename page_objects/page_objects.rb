require "rubygems"
require "selenium-webdriver"


class SignIn
  include PageObject
  
  text_field(:email, :id => 'control_EMAIL')
  button(:button, :id => 'hero-cta-1')
  
end

class LetsGetStarted
   include PageObject
   
   button(:pickJustInvest, :id => 'fund-goal-type-just_invest')
   text_field(:Name_field, :id => 'fund_name')
   button(:next_button, :id => 'fund-start-next-button')
end
   