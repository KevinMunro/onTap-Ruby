#@submit_new_suggestion
#Feature: Submit New Suggestion

#	In order for the user to provide feedback, a user
#	should have the ability to submit a suggestion

#	Background: Login and navigate to new suggestion page
#	  Given that I am logged in
#	  And I navigate to the New Suggestion page

#	Scenario: Submit valid suggestion
#	  Given I enter a valid suggestion
#	  When I submit a suggestion
#	  Then I should see a success alert appear confirming the suggestion was submitted

#	Scenario: Suggestion without title
#	  Given I fill in only the description field
#	  When I submit a suggestion
#	  Then I should see a tooltip error appear

#	Scenario: Suggestion without description
#	  Given I fill in only the title field
#	  When I submit a suggestion
#	  Then I should see a tooltip error appear

#	Scenario: Suggestion with no fields
#	  When I submit a suggestion
#	  Then I should see a tooltip error appear
