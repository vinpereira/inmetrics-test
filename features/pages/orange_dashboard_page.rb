class Dashboard < SitePrism::Page
  element :disciplinary_link, "a[id='menu_discipline_defaultDisciplinaryView']"
  element :add_button, "input[id='btnAdd']"
end
