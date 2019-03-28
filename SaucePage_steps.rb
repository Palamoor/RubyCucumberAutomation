When(/^Click on Add to cart$/) do
 visit AutomationPage
 #sleep(5)

  on(AutomationPage).add_to_cart
  #sleep(8)

  on(AutomationPage).shopping_cart
  #sleep(10)

  on(AutomationPage).check_out
end