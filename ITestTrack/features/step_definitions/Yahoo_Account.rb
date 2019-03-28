Given(/^I am on Yahoo Account Sign up Page$/) do
  puts "Create yahoo account page"
  @browser.goto("https://login.yahoo.com/account/create?specId=yidReg")
end

When(/^I created yahoo login$/) do
  puts "create page"
  @browser.text_field(:name => 'firstName').set"Vani"
  @browser.text_field(:name => 'lastName').set"Palamoor"
  @browser.text_field(:name => 'yid').set"vanipalamoor"
  @browser.text_field(:name => 'password').set"test#1234"
  @browser.select_list(:name => 'shortCountryCode').select"US"
  @browser.text_field(:name => 'phone').set"6149732005"
  @browser.select_list(:name => 'mm').select"January"
  @browser.text_field(:name => 'dd').set"20"
  @browser.text_field(:name => 'yyyy').set"1998"
  @browser.text_field(:name => 'freeformGender').set"Female"
end

Then(/^Click Login Button$/) do
  @browser.button(class:'pure-button').click
end