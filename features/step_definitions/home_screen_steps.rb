Then(/^Left Unit picker value should be "([^"]*)"$/) do |value|
  #find_elements usado pois existem 2 elementos com o mesmo nome e por isso buscamos pelo indice
  actual_picker_text = find_elements(id: "select_unit_spinner")[0].text()

  if value != actual_picker_text
    fail("Expecting Left Unit picker value to be #{value}, actual value is #{actual_picker_text}")
  end
end

Then(/^Right Unit picker value should be "([^"]*)"$/) do |value|
  actual_picker_text = find_elements(id: "select_unit_spinner")[1].text()

  if value != actual_picker_text
    fail("Expecting Right Unit picker value to be #{value}, actual value is #{actual_picker_text}")
  end
end

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  puts state
end

When(/^I press on Clear button$/) do
  puts "Pressing Clear button"
end

Then(/^I type "([^"]*)" to target text field$/) do |target_value|
  sleep 2
  buttons = target_value.split("")

  buttons.each do |button|
    find_element(id: "keypad").find_element(xpath: "//android.widget.Button[@text='#{button}']").click() #find_element(xpath: "//android.widget.Button[@text='#{target_value}']").click()
  end
end

When(/^I should see result as "([^"]*)"$/) do |result|
  actual_result = find_element(id: "target_value").text()
  fail 'Expecting value to be #{result}, acutal result #{actual_text}' if result != actual_result
end

When(/^I press on Add to favorites icon$/) do
  find_element(id: "action_add_favorites").click()
end

Then(/^I press on Favorite Conversions button$/) do
  find_element(id: "select_unit_spinner").click()
end

Then(/^I verify "([^"]*)" added to Favorite Conversions screen$/) do |unit_type|
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='Favorite conversions']")
  find_element(id: "favorites_single_line").find_element(xpath: "//android.widget.TextView[@text='Length']")
end
