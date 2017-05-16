class Login < SitePrism::Page
  set_url "https://enterprise-demo.orangehrmlive.com"

  element :username, "input[id='txtUsername']"
  element :password, "input[id='txtPassword']"
  element :login_button, "input[id='btnLogin']"
end
