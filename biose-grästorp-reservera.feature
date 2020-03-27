Feature: Resevera en plats på Grästorps KonsertBio

    Scenario: Som en besökare ska jag kunna reservera en biljett
        Given I open the url "https://bio.se/bokning/cinemaId/7135/sessionId/342"
        Then I click on the button ".Cookie__button"
        And I pause for 3000ms
        Then I expect that element ".synopsis" is displayed
        And I pause for 3000ms
        Then I click on the element ".icon-plus"      
        And I pause for 5000ms
        When I click on the button ".confirm"
        Then I wait on element ".screen" to be displayed        
        And I click on the element "/html/body/div[1]/div/div/div[1]/section/div/div[2]/div[1]/section[3]/div[2]/div/div/div[2]/ul/div[2]/li/ul/li[3]/ul/li[12]/span"
        Then I click on the button "/html/body/div[1]/div/div/div[1]/section/div/div[2]/div[1]/section[3]/div[2]/div/div/div[4]/button[2]"
        Then I pause for 5000ms
        And I expect that element ".ticketDiv" is displayed