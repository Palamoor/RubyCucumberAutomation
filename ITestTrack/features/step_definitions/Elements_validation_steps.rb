Given(/^I am on Elements page$/) do
  @browser.goto "singabills.github.io/ta1.github.io"
end

When(/^Enter FName as (.*) and LName as (.*)$/) do |fname, lname|

  fn = @browser.text_field id: 'fname'
  fn.exists?
  fn.when_present.set fname
  puts fn.value

  ln = @browser.text_field id: 'lname'
  ln.exists?
  ln.when_present.set lname
  puts ln.value
end

And(/^Select gender as (.*)$/) do |args1|
  g = @browser.radio(value: "#{args1}")
  g.exists?
  g.when_present.set
  puts g.set?
end

And(/^Select the Bike$/) do
  b = @browser.checkbox value: 'Bike'
  b.exists?
  b.when_present.set
  puts b.set?
end

And(/^Select the car$/) do
  c = @browser.checkbox value: 'Car'
  c.exists?
  c.when_present.set
  puts c.set?
end

And(/^Select car as (.*)$/) do |carmodel|
  cm = @browser.select_list id: 'selectlist'
  cm.exists?
  cm.when_present.select carmodel
  puts cm.selected_options
end

Then(/^Click the Submit$/) do
  btn = @browser.button value: 'Submit'
  btn.exists?
  btn.click
end

#Then(/^I check the result$/) do
# r = @browser.element id: 'result'
#expect(r.text).to include "Jeff"
#end
Then(/^Check the result (.*) (.*) (.*)$/) do|args2, args3, args4|
  r = @browser.element id: 'result'
  expect(r.text).to include args2
  expect(r.text).to include args3
  expect(r.text).to include args4
  #puts @data['FirstName']
end

