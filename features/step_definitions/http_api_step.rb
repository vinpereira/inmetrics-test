Given(/^I perform a GET request to "(.*)" service$/) do |service_name|
  @http_api = HTTParty.get("http://swapi.co/api/#{service_name}/")
end

When(/^I get the response and show the films' title$/) do
  @http_api["results"].each do |item|
    puts item["title"]
  end
end

Then(/^I should see the Status Code (\d+)$/) do |status_code|
  expect(@http_api.code).to eq status_code.to_i
end

When(/^I save the count response$/) do
  @count_result = @http_api["count"]
end

Then(/^I perform another GET to "(.*)" with a higher number$/) do |service_name|
  number = @count_result + 10
  @http_api = HTTParty.get("http://swapi.co/api/#{service_name}/#{number}")
end
