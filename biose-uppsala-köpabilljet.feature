Feature: Boka och köpa en biljett i Uppsala

    Scenario: Som en besökare ska jag kunna reservera en biljett
        Given I open the url "https://bio.se/bokning/cinemaId/7/sessionId/5107"
        And I pause for 3000ms
        Then I click on the button ".Cookie__button"
        And I expect that element ".Cookie--bottom" is not displayed
        Then I expect that element ".synopsis" is displayed
        #Then I wait on element ".synopsis" to be displayed
        Then I click on the element ".icon-plus"
        Then I click on the button "/html/body/div[1]/div/div/div[1]/section/div/div[2]/div[1]/section[2]/content/div[3]/button[1]"

        And I pause for 5000ms
        Then I click on the button ".confirm"
        And I wait on element ".screen" to be displayed        
        
        Then I pause for 5000ms
        And I expect that element ".ticketDiv" is displayed