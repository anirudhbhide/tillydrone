Feature: Add caretaker information for children
  In order to track a childs caretakers
  As a user
  I want enter the information for a childs caretaker
  
  Scenario: Add caretaker information
    Given I am a new, authenticated user
    And a person called "Oum Bora"
    And a person called "Aunty Bora"
    And a person called "Grandma Bora"
    When I go to the person page for "Oum Bora"
    And follow "Add caretaker information"
    And I select "Aunty Bora" from "person_id"
    And I fill in "relationship_type" with "aunty"
    And I press "Add caretaker"
    And I select "Grandma Bora" from "person_id"
    And I fill in "relationship_type" with "grandma"
    And I press "Add caretaker"
    Then "Oum Bora" should have 2 caretakers
