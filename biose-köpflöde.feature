Feature: På bio.se ska det finnas ett fungerande köpflöde.
    Som en besökare ska jag kunna boka och
    betala för mina biljetter

    Background:
        Given I open the url "https://bio.se/bokning/cinemaId/7339/sessionId/193"

    Scenario: Boka en biljett
     Given I open the url "https://bio.se/bokning/cinemaId/7/sessionId/5107"
      And I pause for 5000ms
      When I click on the button ".Cookie__button"
      Then I expect that element ".synopsis" is displayed
      And I pause for 5000ms
      Then I click on the element ".icon-plus"      
      And I pause for 5000ms
      When I click on the button ".confirm"
      Then I wait on element ".screen" to be displayed
      And I click on the element "/html/body/div[1]/div/div/div[1]/section/div/div[2]/div[1]/section[3]/div[2]/div/div/div[2]/ul/div[2]/li/ul/li[3]/ul/li[6]/span"
      And I click on the button "/html/body/div[1]/div/div/div[1]/section/div/div[2]/div[1]/section[3]/div[2]/div/div/div[4]/button[2]"
      Then I pause for 5000ms
      And I expect that element ".mr-1" is displayed
      