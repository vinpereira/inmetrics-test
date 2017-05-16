# Inmetrics Test - QA Agile Tester

To solve the test I needed to learn about HTTParty and SitePrism. It was fun =)

I need to better understand the Section in SitePrism to improve my code.

## Programming Language and libraries used to solve the problems

  - Ruby 2.4.1 @ Ubuntu 17.04 64-bits

Main libraries:
  - capybara v2.14.0
  - cucumber v2.4.0
  - httparty v0.15.2
  - poltergeist v1.15.0
  - rspec v3.6.0
  - selenium-webdriver v3.4.0
  - site_prism v2.9

### Running the codes
There are different ways to run this code -- all in the project's root directory

- Execute every feature with cucumber
```sh
$ cucumber
```

- Execute a profile (see more at cucumber.yml)

```sh
$ cucumber -p inmetrics
```

- Execute with/without a profile AND save it in a HTML Report

```sh
$ cucumber -p inmetrics -p html_report
```
