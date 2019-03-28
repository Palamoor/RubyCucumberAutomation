Given(/^I am on google Search$/) do
  puts "google Page"
  @browser.goto("google.com")
end


When(/^I search for cucumber$/) do
  puts "Search for Cucumber"
  #@browser.text_field(:name =>'p').set"gmail"
  #@browser.button(:class_id =>'fkbx')
  #puts @browser.title
end


