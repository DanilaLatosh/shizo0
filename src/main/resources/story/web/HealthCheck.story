Scenario: Registration in Walmart
Given I am on a page with the URL 'https://www.walmart.com'
When I click on an element with the text 'Account'
When I click on an element with the text 'Sign In'
When I click on an element with the text 'Create account'
When I enter `test` in field located `By.xpath(//*[@id="first-name-su"])`
When I enter `test` in field located `By.xpath(//*[@id="last-name-su"])`
When I enter `<email>` in field located `By.xpath(//*[@id="email-su"])`
When I enter `Test1234` in field located `By.xpath(//*[@id="password-su"])`
When I click on an element with the text 'Create account'
When I wait until element located `By.xpath(//*[@id="global-search-input"])` appears

Examples:
|email						       |
|#{generate(Internet.emailAddress)}|

Scenario: Searching for product
Given I am on a page with the URL 'https://www.walmart.com'
When I enter `Clocks` in field located `By.xpath(//*[@id="global-search-input"])`
When I click on element located `By.xpath(//*[@id="global-search-submit"]/span)`

Scenario: Opening product page
When I wait until element located `By.xpath(//span[text()='Account'])` appears
When I click on an element with the text 'Equity by La Crosse 75903 0.9" Blue LED Digital Desktop Alarm Clock'
When I wait until element located `By.xpath(//span[text()='Add to cart'])` appears

Scenario: Adding product to cart and navigating to cart
When I click on element located `By.xpath(//span[text()='Add to cart'])`
When I wait until element located `By.xpath(//span[text()='Check out'])` appears

Scenario: Navigating to cart
When I click on element located `By.xpath(//*[@id="hf-cart"]/span/span)`
Then the page with the URL 'https://www.walmart.com/cart' is loaded




When I click on element located `By.xpath(//span[text()='Создать доску'])`
When I enter `<name>` in field located `By.xpath(//input[contains(@data-test-id,'create-board-title-input')])`
When I click on element located `By.xpath(//button[text()='Создать доску'])`