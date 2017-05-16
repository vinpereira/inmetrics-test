Given(/^I am on OrangeHRM page$/) do
  @login = Login.new
  @login.load
end

Given(/^I perform a login as Peter$/) do
  @login.username.set 'peter.mac'
  @login.password.set 'peter.mac'

  @login.login_button.click
end

When(/^I access disciplinary section$/) do
  @dashboard = Dashboard.new

  @dashboard.disciplinary_link.click
  @dashboard.add_button.click
end

When(/^I add a new disciplinary case$/) do
  @disciplinary_case = DisciplinaryCase.new

  @disciplinary_case.employee_name.set 'Tom Walker'
  @disciplinary_case.employee_name_selector.click
  @disciplinary_case.case_name.set 'Being a jerk'
  @disciplinary_case.case_description.set 'Tom is being rude to everyone at work!'

  @disciplinary_case.save_button.click
end

Then(/^I should see the new disciplinary case$/) do
  expect(@disciplinary_case.create_by.value).to eq 'Peter Mac Anderson'
end

When(/^I try to login with wrong username$/) do
  @login = Login.new
  @login.username.set 'peter.mac'
  @login.password.set 'peter.mac123'

  @login.login_button.click
end

Then(/^I should see the Retry Login Page$/) do
  expect(@login.current_url).to eq 'https://enterprise-demo.orangehrmlive.com/securityAuthentication/retryLogin'
end
