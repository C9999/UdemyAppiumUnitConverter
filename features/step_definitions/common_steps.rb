Then(/^I should see "([^"]*)" text$/) do |text|
  result = exists{find_element(xpath: "//android.widget.TextView[@text='#{text}']")}
  fail("Element with name #{text} not found") if result == false
end

Then(/^I verify "([^"]*)" as current screen$/) do |conversion_name|
  item_tela = find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='#{conversion_name}']")
  expect(item_tela.text()).to eq(conversion_name)
end
