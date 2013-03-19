Feature: Signing in

	Scenario: Sign in failure
	Given a user visits the sign in page
	When he submits invalid sign in information
	Then he should see an error message

	Scenario: Sign in success
	Given a user visits the sign in page
	  And the user has an account
	When he submits valid sign in information
	Then he should his profile page
	  And he should see a sign out link
