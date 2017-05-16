class OrangeHome < SitePrism::Page
  set_url "https://enterprise-demo.orangehrmlive.com"

  element :username, "input[id='txtUsername']"
  element :password, "input[id='txtPassword']"
  element :login_button, "input[id='btnLogin']"
end

class Dashboard < SitePrism::Page
  element :disciplinary_link, "a[id='menu_discipline_defaultDisciplinaryView']"
  element :add_button, "input[id='btnAdd']"
end

class DisciplinaryCase < SitePrism::Page
  element :employee_name, "input[id='addCase_employeeName_empName']"
  element :employee_name_selector, :xpath, "//div[@class='ac_results']/ul/li"
  element :case_name, "input[id='addCase_caseName']"
  element :case_description, "textarea[id='addCase_description']"
  element :save_button, "input[id='btnSave']"

  element :create_by, "input[id='addCase_createBy_empName']"
end
