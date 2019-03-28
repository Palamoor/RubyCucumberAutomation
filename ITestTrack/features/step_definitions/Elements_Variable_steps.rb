Given(/^I am in the Automation Page$/) do
  @browser.goto "singabills.github.io/ta1.github.io"
end

When(/^I enter the First Name as (.*)$/) do |var|
  f = @browser.text_field id:'fname'
  f.exists?
  f.when_present.set #@data['FirstName']
  puts f.value
end

And(/^I enter the Last Name as (.*)$/) do |var1|
  l = @browser.text_field id: 'lname'
  l.exists?
  l.when_present.set #@data['LastName']
  puts l.value
end

And(/^I select the Gender as Male$/) do
  m= @browser.radio value: 'male'
  m.exists?
  m.when_present.set
  puts m.set?
end

And(/^I select the Gender as Female$/) do
  g =@browser.radio value: 'female'
  g.exists?
  g.when_present.set
  puts g.set?
end

And(/^I select Bike$/) do
  b = @browser.checkbox value: 'Bike'
  b.exists?
  b.when_present.set
  puts b.set?
end

And(/^I select car$/) do
  c = @browser.checkbox value: 'Car'
  c.exists?
  c.when_present.set
  puts c.set?
end

And(/^I select a car as(.*)$/) do |args|
  s = @browser.select_list id: 'selectlist'
  s.exists?
  s.select args
  puts s.selected_options
end

And(/^I select a car as Mercedes$/) do
  s = @browser.select_list id: 'selectlist'
  s.exists?
  s.select Mercedes
  puts s.selected_options
end

Then(/^I click Submit$/) do
  btn = @browser.button value:'Submit'
  btn.exists?
  btn.click
end


