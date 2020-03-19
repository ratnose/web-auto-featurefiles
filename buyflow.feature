Feature: På bio.se ska det finnas ett fungerande köpflöde.
    Som en besökare ska jag kunna boka och
    betala för mina biljetter

    Scenario: Boka en biljett
     Given I open the url "https://bio.se/bokning/cinemaId/7339/sessionId/193"
      When I pause for 3000ms
      Then I expect that element ".synopsis" is displayed
      And I pause for 3000ms