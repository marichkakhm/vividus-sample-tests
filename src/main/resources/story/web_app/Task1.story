Narrative:
  In order to verify main UI flows on EPAM site
  As a tester
  I want to automate checks from Task 1
Scenario: Check the title is correct
Given I am on page with URL `https://www.epam.com/`
Then page title is equal to `EPAM | Software Engineering & Product Development Services`
Scenario: Check policies list (footer)
Given I am on page with URL `https://www.epam.com/`
When I scroll element located by `cssSelector(div.policies-links-wrapper)` into view
Then element located by `linkText(INVESTORS)` exists for `PT5S` duration
Then element located by `linkText(COOKIE POLICY)` exists for `PT5S` duration
Then element located by `linkText(OPEN SOURCE)` exists for `PT5S` duration
Then element located by `linkText(APPLICANT PRIVACY NOTICE)` exists for `PT5S` duration
Then element located by `linkText(PRIVACY POLICY)` exists for `PT5S` duration
Then element located by `linkText(WEB ACCESSIBILITY)` exists for `PT5S` duration
Scenario: Check search function
Given I am on page with URL `https://www.epam.com/`
When I click on element located by `cssSelector(.header-search__button)`
When I enter `AI` in field located by `name(q)`
When I click on element located by `cssSelector(button.custom-search-button)`
Then `${current-page-url}` matches `^https://www\.epam\.com/search\?q=AI$`
Scenario: Check change language to UA
Given I am on page with URL `https://www.epam.com/`
When I click on element located by `cssSelector(button.location-selector__button)`
When I click on element located by `cssSelector(a.location-selector__link[lang='uk'])`
Then `${current-page-url}` matches `^https://careers\.epam\.ua/?$`
Scenario: Company logo returns to main page
Given I am on page with URL `https://www.epam.com/about`
When I click on element located by `cssSelector(a.header__logo-link)`
Then `${current-page-url}` matches `^https://www\.epam\.com/?$`
Scenario: Check switch Light / Dark mode
Given I am on page with URL `https://www.epam.com/`
When I click on element located by `cssSelector(section.theme-switcher-ui .theme-switcher)`
Then element located by `cssSelector(body.light-mode)` exists for `PT5S` duration
When I click on element located by `cssSelector(section.theme-switcher-ui .theme-switcher)`
Then element located by `cssSelector(body.dark-mode)` exists for `PT5S` duration
Scenario: Check that allow-to switch location list by region
Given I am on page with URL `https://www.epam.com/`
When I scroll element located by `cssSelector(.text-ui-23)` into view
Then element located by `linkText(AMERICAS)` exists for `PT5S` duration
Then element located by `linkText(EMEA)` exists for `PT5S` duration
Then element located by `linkText(APAC)` exists for `PT5S` duration
