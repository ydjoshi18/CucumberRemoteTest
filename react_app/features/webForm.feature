Feature: react Web form with basic information
As a user, I want to enter my personal information

Background:
  Given a web form is open in web browser

 Scenario: all the elements are present in the form
   Then Name field is visible to User 
    And Age field is visible to User
    And Password field is visible to User
    And Confirm Password field is visible to User
    And Hobbies field is visible to User
    And Add button is visible to User

  Scenario: Validate the name field with null value
   When user keeps the name field empty
   Then red error message is visible below name text box

  Scenario: Validate the name field with 25 characters
   When user enters name with 25 characters
   Then red error message is visible below name text box

  Scenario: Validate the name field with more than 25 characters
   When user enters name with more than 25 characters
   Then red error message is visible below name text box
  
  Scenario: Validate the name field with more than 0 characters and less than 25 characters
   When user enters name with more than 0 characters and less than 25 characters
   Then no error message is visible below name text box

  Scenario: Validate the name field with more than 0 characters and less than 25 characters with space
   When user enters name with more than 0 and less than 25 characters with space
   Then no error message is visible below name text box

  Scenario: Validate the name field with more than 0 characters and less than 25 characters with space and special characters
   When user enters name with more than 0 and less than 25 characters with space and special characters
   Then red error message is visible below name text box
  
  Scenario: Validate the age field with null value
   When user keeps the age field empty
   Then red error message is visible below age text box
     
  Scenario: Validate the age field with integer less than 18
   When user enters integer less than 18
   Then red error message is visible below age text box
    
  Scenario: Validate the age field with any number other than integer
   When user enters any number other than integer
   Then red error message is visible below age text box

  Scenario: Validate the age field with characters other than number
   When user enters any characters other than number
   Then red error message is visible below age text box

  Scenario: Validate the age field with numbers with space
   When user enters any numbers with space
   Then red error message is visible below age text box

  Scenario: Validate the age field with integer more than 18
   When user enters integer more than 18
   Then no error message is visible below age text box

  Scenario: Validate the age field with integer equal to 18
   When user enters 18
   Then no error message is visible below age text box

  Scenario: Validate the password field with string less than 8 characters
   When user enters string of less than 8 characters
   Then red error message is visible below password text box

  Scenario: Validate the password field with string equal to 8 characters
   When user enters string of 8 characters
   Then red error message is visible below password text box

  Scenario: Validate the password field with string equal to 15 characters
   When user enters string of 15 characters
   Then red error message is visible below password text box

  Scenario: Validate the password field with string more than 15 characters
   When user enters string of more than 15 characters
   Then red error message is visible below password text box

  Scenario: Validate the password field with string more than 15 characters
   When user enters string of more than 15 characters
   Then red error message is visible below password text box

  Scenario: Validate the password field with string more than 8 and less than 15 characters with space
   When user enters string of more than 8 characters and less than 15 characters with space 
   Then red error message is visible below password text box
  
  Scenario: Validate the password field with string more than 8 and less than 15 characters
   When user enters string of more than 8 characters and less than 15 characters
   Then no error message is visible below password text box
      And red error message is visible below Confirm password field

  Scenario: Validate the confirm password field with shorter string compared to password field 
   Given user enters valid string in password field
    When user enters shorter string in confirm password field
    Then red error message is visible below confirm password text box

  Scenario: Validate the confirm password field with longer string compared to password field 
   Given user enters valid string in password field
    When user enters longer string in confirm password field
    Then red error message is visible below confirm password text box

  Scenario: Validate the confirm password field with null value 
   Given user enters valid string in password field
    When user keeps confirm password field empty
    Then red error message is visible below confirm password text box

  Scenario: Validate the confirm password field with same string compared to password field 
   Given user enters valid string in password field
    When user enters same string in confirm password field
    Then no error message is visible below confirm password text box

  Scenario: Validate the hobbies field with null value and Add button
    When user keeps hobbies field empty
       And clicks on add button
    Then hobby gets added to the running list of hobbies
       And hobbies text box gets empty

  Scenario: Validate the hobbies field with valid input and Add button
    When user enters valid characters in hobbies text box
       And clicks on add button
    Then hobby gets added to the running list of hobbies
       And hobbies text box gets empty

  Scenario: Validate the hobbies field entering valid input with space and Add button
    When user enters valid characters with space in hobbies text box
       And clicks on add button
    Then hobby gets added to the running list of hobbies
       And hobbies text box gets empty

  Scenario: Validate the hobbies field with null value and enter button
    When user keeps hobbies field empty
       And press enter button
    Then hobby gets added to the running list of hobbies
       And hobbies text box gets empty
   
  Scenario: Validate the hobbies field with valid input and enter button
    When user enters valid characters in hobbies text box
       And press enter button
    Then hobby gets added to the running list of hobbies
       And hobbies text box gets empty

  Scenario: Validate the hobbies field entering valid input with space and enter button
    When user enters valid input with space in hobbies text box
       And press enter button
    Then hobby gets added to the running list of hobbies
       And hobbies text box gets empty
   
  
   
  