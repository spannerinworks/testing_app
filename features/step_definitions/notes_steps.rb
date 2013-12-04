Given /I am on the homepage/ do
  visit '/'
end

When /^I visit "(.*?)"$/ do |path|
  visit path
end

Then /^I should see "(.*?)"$/ do |text|
  expect(page).to have_content text
end