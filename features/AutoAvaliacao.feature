Feature: Self Evaluation
    As a student logged in the system
    I want to be able to grade myself over the course criterions

    Scenario: Successful Self Grading
    Given I am a student in the "Grades" page
    And I have not graded myself over the criterion "Configure Management"
    Then a blank space should appear bellow the criterion "Configure Management"

    Scenario: Unsuccessful Self Grading
    Given I am a student in the "Grades" page
    And my professor gave me a "MANA" grade for the "Configure Management" criterion
    When I try to attribute a "MA" grade for the "Configure Management"criterion
    Then I am not able to register the grade
    And the message "You cannot assign a grate greater than the one your teacher gave you" appears
    And a popup appears to alert the user
    And a button "ok" is displayed to return to the grading page

    Scenario: Grade Consolidation
    Given I am a student in the "Grades page
    And I have the "Configure Management" criterion to assign a grade
    When I assign a grade to the "Configure Management" criterion
    And It is successfully added
    And I do not have other criterion to assign Grades
    Then the professor is able to consolidate the grades