Given(/^I go to automation page$/) do
  @browser.goto "singabills.github.io/ta1.github.io"
end

When(/^I enter firstname$/) do
  t = @browser.text_field id: 'fname'
  t.exists?
  t.set 'Geetha'
  puts t.value
end

And(/^I enter lastname$/) do
  t = @browser.text_field id: 'lname'
  t.exists?
  t.set 'shiv'
  puts t.value
end

And(/^I select Gender as male$/) do
  r = @browser.radio value: 'female'
  r.exists?
  r.set
  puts r.set?
end

And(/^I select as Bike$/) do
  c = @browser.checkbox value: 'Bike'
  c.exists?
  c.set
  puts c.set?
end

And(/^I select Au$/) do
  s = @browser.select_list id: 'selectlist'
  s.select 'Audi'
  puts s.selected_options
end

Then(/^I click submit$/) do
  btn = @browser.button value: 'Submit'
  btn.exists?
  btn.click
end

