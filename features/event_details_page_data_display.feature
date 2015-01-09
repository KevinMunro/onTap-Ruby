@event_details_page_data_display
Feature: Display Event Information on Details Page

	In order for the user to view information about an event, a user
	should have the ability to view information on the details page

	Background: Login and navigate to Add New Event page
	  Given that I am logged in as an admin
	  And I navigate to the Add New Event page

	Scenario Outline: Submit valid lunch and learn
	  Given I enter a valid <event_description> event
	  When I submit a event
	  Then I should see a success alert appear confirming the event was added
          When I click the details button for the event
          Then I should be brought to the event details page
          And I should see the correct information previously entered
          
          Examples:
            |event_description|
            |lunch_and_learn.yml|
            |lunch_and_learn_restricted.yml|
            |lunch_and_learn_gotomeeting.yml|
            |webinar.yml|
            |webinar_restricted.yml|
