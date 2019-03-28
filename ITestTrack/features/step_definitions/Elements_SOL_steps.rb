Given(/^I am in Automate Elements page$/) do
  @browser.goto "singabills.github.io/ta1.github.io"
end

When(/^I enter the FirstName as (.*) and LastName as(.*)$/) do |fname, lname|

  fn = @browser.text_field id: 'fname'
  fn.exists?
  fn.when_present.set fname
  puts fn.value

  ln = @browser.text_field id: 'lname'
  ln.exists?
  ln.when_present.set lname
  puts ln.value
  sleep(5)
end

And(/^I select gender as (.*)$/) do |args1|
  g = @browser.radio(value: "#{args1}")
  g.exists?
  g.when_present.set
  puts g.set?
end

And(/^I select the Bike$/) do
  b = @browser.checkbox value: 'Bike'
  b.exists?
  b.when_present.set
  puts b.set?
end

And(/^I select the car$/) do
  c = @browser.checkbox value: 'Car'
  c.exists?
  c.when_present.set
  puts c.set?
end

And(/^I select car as (.*)$/) do |carmodel|
  cm = @browser.select_list id: 'selectlist'
  cm.exists?
  cm.when_present.select carmodel
  puts cm.selected_options
end

When(/^I enter the FirstName$/) do
  f =@browser.text_field id: 'fname'
  f.exists?
  f.when_present.set @data["FirstName"]
  puts f.value
end

And(/^Enter LastName$/) do
  l=@browser.text_field id: 'lname'
  l.exists?
  l.when_present.set @data["LastName"]
  puts l.value
end

And(/^I select car Audi$/) do |var1|
  s = @browser.select_list(id:  "#{var1}")
  s.select
  puts s.selected_options
end

Then(/^I click the Submit$/) do
  btn = @browser.button value: 'Submit'
  btn.exists?
  btn.click
  #puts @data['FirstName']
  # puts "Data from yaml first name" +@data['firstname']
  #puts "Data from yaml last name" +@data['lastname']
end

#Then(/^I check the result$/) do
# r = @browser.element id: 'result'
#expect(r.text).to include "Jeff"
#end


