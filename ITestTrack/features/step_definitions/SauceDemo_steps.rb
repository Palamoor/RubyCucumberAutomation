Given(/^I am on SauceDemo$/) do
  @browser.goto "https://www.saucedemo.com/inventory.html"
  sleep(5)
end

When(/^click 2nd product$/) do
  @browser.button(class: 'btn_primary btn_inventory', :index=>1).click
  #sleep(5)
end

And(/^click the cart$/) do
  @browser.div(class: 'shopping_cart_container').click
  #sleep(10)
end

And(/^click on the checkout$/) do
  @browser.link(href: './checkout-step-one.html').click
  #sleep(5)
end

And(/^Enter your Information$/) do
  @browser.text_field(id: 'first-name').set 'Vani'
  @browser.text_field(id: 'last-name').set 'pala'
  @browser.text_field(id: 'postal-code').set '43016'
  #@browser.div(class: 'btn_primary cart_button').click
  @browser.element(xpath: '//*[@id="checkout_info_container"]/div/form/div[2]/input').click
  #sleep(5)
end

Then(/^Click on Finish$/) do
  @browser.link(href: './checkout-complete.html').click
  sleep(5)
end