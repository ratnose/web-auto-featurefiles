Feature:    Som en besökare på Grästorps biograf.
            Vill jag kunna reservera en plats på första filmen.

    Scenario: Hitta fram till Grästorps bio
        Given I open the url "https://bio.se"
        And I wait on element "" to be displayed
        Then I expect that element ".modal-body" is displayed

    Scenario: Stäng modalvyn
        Given I open the url "https://bio.se"
        When I pause for 1000ms
        And I expect that element ".modal-body" is displayed
        When I click on the element ".icon-close-gold"
        Then I expect that element ".main-page__title" is displayed

    Scenario: Lista alla biografer och hitta Grästorps
        Given the page url is not "https://bio.se/biografer"
        Then I open the url "https://bio.se/biografer"
        And I click on the link "Grästorp KonsertBio*"
        Then I wait on element ".more-cinema-info" for 1000ms to be displayed

    Scenario: Reservera en plats på första filmen
        Given I open the url "https://bio.se/biografer/konsertbio"
        And I pause for 3000ms
        Then I click on the button ".Cookie__button"
        And I expect that element ".synopsis" is displayed
        Then I pause for 3000ms
        