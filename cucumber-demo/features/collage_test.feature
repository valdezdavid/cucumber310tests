Feature: Collage Build Button for InitialPage is according to stakeholder requirements

Background:

	Given I am on the initial page

Scenario: button is labeled with text "Build Collage"

	Then I should see the value of the button is "Build Collage"

Scenario: button text is white in color

	Then I should see the CSS of the button has text color white

Scenario: button color is dark gray

	Then I should see the CSS of the button has background color dark grey

Scenario: button cannot be pressed unless text has been typed in the input box

	When I hit the button
	Then I should see the page is still initialPage.jsp
	When I start typing a topic into the input box
	When I hit the button
	Then I should find myself on the CollagePage

Scenario: pressing the button triggers the collage building process

	When I start typing a topic into the input box
	When I hit the button
	Then I should find a new collage is being built

Scenario: button is to the right of the input box
	
	Then I should see the CSS of the input box and button properly align the button to the right of the input box





