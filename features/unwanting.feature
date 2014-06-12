Feature: Unwanting a listing
In order to change your mind about buying a listing
As a user
I can retract my interest

Scenario: A User decides they no longer want an item 
Given Ollie is signed in
Given Ollie has already liked a listing
And Ollie visits the listing
Then Ollie clicks 'Changed my mind'
Then Ollie is asked to confirm
Then he is taken to the home page to begin browsing again
