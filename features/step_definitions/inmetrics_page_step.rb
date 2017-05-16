Given(/^I am on Inmetrics page$/) do
  @home = Home.new
  @home.load
end

When(/^I access the about page$/) do
  @home.about_link.click
end

Then(/^I should see "(.*)"$/) do |text|
  expect(page).to have_content text
end
