Then(/^I press on Create Your Fist Conversion button$/) do
  find_element(id: "btn_new_custom_conversion").click()
end

Then(/^I type "([^"]*)" as new conversion name$/) do |conversion_name|
  find_element(id: "edit_custom_conversion_category_name").send_keys(conversion_name)
end

Then(/^I press on NEW UNIT button on new converions screen$/) do
  find_element(id: "btn_new_custom_unit").click()
end

Then(/^I type "([^"]*)" as unit value$/) do |unit_name|
  find_element(id: "edit_custom_conversion_unit_dtls_name").send_keys(unit_name)
end

Then(/^I type "([^"]*)" as unit symbol$/) do |unit_symbol|
  find_element(id: "edit_custom_conversion_unit_dtls_symbol").send_keys(unit_symbol)
end

Then(/^I type "([^"]*)" as new unit value$/) do |unit_value|
  find_element(id: "edit_custom_conversion_unit_dtls_value").send_keys(unit_value)
end

Then(/^I press on checkmark icon on new unit screen$/) do
  find_element(id: "action_confirm_custom_unit").click()
end

Then(/^I press on OK button on new conversion screen$/) do
  find_element(id: "btn_custom_conversion_details_ok").click()
end

Then(/^I verify conversion with name "([^"]*)" on My Converions screen$/) do |conversion_name|
  item_tela = find_element(id: "custom_category_item_name")
  expect(item_tela.text).to eq(conversion_name)
  puts " Aeeeeeeeeeeeeee"

end
