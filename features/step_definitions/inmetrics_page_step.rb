Given(/^I am on Inmetrics page$/) do
  @inmetrics_home = InmetricsHome.new
  @inmetrics_home.load
end

When(/^I access the about page$/) do
  @inmetrics_home.about_link.click
end

Then(/^I should see "(.*)"$/) do |text|
  @about = About.new

  # expect(page).to have_content text
  expect(@about.heading.text).to include text
end
