Scenario: Sigh Up
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//a[text()='Войти'])`
When I enter <email> and <password> in registration form
When I click on element located `By.xpath(//span[text()='Войти'])`
Examples:
|email                 |password   |
|danyaleonova@yandex.by|0206__alex$|

Scenario: Visual checks
When I wait until element located `By.xpath(//span[text()='Шаблоны'])` appears
When I establish baseline with `menu`
When I click on element located `By.xpath(//span[text()='Шаблоны'])`
When I establish baseline with `page1`
When I click on element located `By.xpath(//span[text()='Образование'])`
When I wait until element located `By.xpath(//div[text()='Remote Class Template'])` appears
When I establish baseline with `432`
When I click on element located `By.xpath(//span[@aria-label='HouseIcon'])`
When I wait until element located `By.xpath(//span[text()='Создать доску'])` appears
When I establish baseline with `photos` ignoring:
|ELEMENT|
|By.xpath(//div[@class='boards-page-board-section mod-no-sidebar'])|
Then the page with the URL 'https://trello.com/templates/education' is loaded

Scenario: UI controls
When the condition '#{eval("<class>"=="boards-page-board-section-header")}' is true I do
|step|
|When I click on element located `By.xpath(//span[text()='Участники'])`|
|Then an element with the name 'Пригласите вашу команду' exist|