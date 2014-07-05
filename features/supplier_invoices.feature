Feature: Track supplier invoices
	In order to track my supplier invoice
	As a AP accountant
	I need to see my supplier invoices

	Scenario: supplier invoice monitoring 
		Given I am directed to my launch pad
		When I cancel the input box if any
		And I goto the Track supplier invoices
		Then I can see a "blocked" invoice named "NorthWoods" with Origional Amount 100 EUR