Given(/^I land on home screen$/) do
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='Length']")
end

When(/^I press on Menu icon$/) do
  find_element(id: "action_bar").find_element(xpath: "//android.widget.ImageButton[@content-desc='Open navigation drawer']").click
  sleep 1
end

Then(/^I Should see left Menu$/) do
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='Unit Converter']")
end

When(/^I press My Conversions$/) do
  find_element(id: "target_value_placeholder").click
end

Then(/^I land on My Conversions screen$/) do
  teste = find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='My conversions']")
  expect(teste.text).to eq("My conversions")
end

Then(/^I select "([^"]*)" unit$/) do |unit_name|
  sleep 2
  find_element_in_list(unit_name)
  find_element(xpath: "//android.widget.TextView[@text='#{unit_name}']").click()
end

When(/^I press on History$/) do
  find_element(xpath: "//android.widget.TextView[@text='History']").click()
end

Then(/^I verify "([^"]*)" as (\d+)(?:st|nd|rd|th)? result in history list$/) do |text, index|
  result = exists{find_element(id: "history_conversion_list").find_element(xpath: "//android.widget.TextView[@text='#{text}']")}
  fail("Element '#{text}' not found in History list") if result == false
end

Then(/^I press X to remove (\d+)(?:st|nd|rd|th)? result in history list$/) do |index|
  index = index.to_i()
  find_element(id: "history_conversion_list").find_elements(id: "deleteIcon")[index - 1].click()
end
