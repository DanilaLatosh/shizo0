Scenario: Trelo board creation
Given request body: {
"name": "123",
"key": "6089397a886c4a1f10baf120",
"token": "Utaiu8QEpGasjey5an1dUHD3wdUKWz4Js5Zst474su5Ic4qzHNSjRHlfxozTnSTs"
}
When I wait until element located `By.xpath(//span[text()='Создать доску'])` appears
When I issue a HTTP POST request for a resource with the URL 'https://trello.com/1/boards'
Then the response code is equal to '200'