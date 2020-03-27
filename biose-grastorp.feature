Feature:    Som en besökare på Grästorps biograf.
            Vill jag kunna reservera en plats på första filmen.

    Scenario: Hitta fram till Biograflistan
        Given I open the url "https://bio.se"
        Then I click on the button ".Cookie__button"
        And I expect that element ".modal-body" is displayed
        When I click on the element ".icon-close-gold"
        Then I expect that element ".main-page__title" is displayed
        When I click on the element "/html/body/div[1]/div/div/footer/div/div[2]/div[1]/div/a[4]"
        And I expect that the url is "https://bio.se/biografer"

    Scenario: Hitta Grästorps
        Given I open the url "https://bio.se/biografer"
        And I click on the link "Grästorp KonsertBio*"
        Then I wait on element ".more-cinema-info" for 1000ms to be displayed
        And I expect the url 