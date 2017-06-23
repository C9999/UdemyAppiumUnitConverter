Then(/^I press on Search icon$/) do
  find_element(id: "action_search").click()
end

When(/^I type "([^"]*)" to search field$/) do |search_term|
  find_element(id: "search_src_text").send_keys(search_term)
end

When(/^I press on Search icon on soft keyboard$/) do
  #acesso ao elemento através das cordenadas
  Appium::TouchAction.new.tap(x:0.99, y:0.99, count:1).perform.release
end
