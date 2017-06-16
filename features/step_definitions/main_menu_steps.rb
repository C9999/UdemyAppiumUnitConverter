Given(/^I land on home screen$/) do
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='Length']")
end

When(/^I press on Menu icon$/) do
  find_element(id: "action_bar").find_element(xpath: "//android.widget.ImageButton[@content-desc='Open navigation drawer']").click
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

  find_element(xpath: "//android.widget.TextView[@text='#{unit_name}']").click()
end
