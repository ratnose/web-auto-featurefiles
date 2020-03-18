Feature: Köra genom bio.se
    Som en besökare
    Ska jag kunna boka en film inkl plats och köp

    Scenario: Öpnna bio.se
        Given the page url is not "https://bio.se"
            And I open the url "https://bio.se"
        Then I expect that element ".modal-body" is displayed

    Scenario: Stäng modalvyn
        Given I open the url "https://bio.se"
            And I expect that element ".modal-body" is displayed
        When I click on the element ".icon-close-gold"
        Then I expect that element ".main-page__title" is displayed

    Scenario: Lista alla biografer
        Given the page url is not "https://bio.se/biografer"
            Then I open the url "https://bio.se/biografer"
        And I click on the link "Ockelbo Rio biografen*"
            Then I wait on element ".more-cinema-info" for 3000ms to be displayed



    Scenario: Testa köpflödet
        Given I open the url "https://bio.se/bokning/cinemaId/7339/sessionId/193"
        And I click the element "span.icon-plus"