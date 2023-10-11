Feature: Self Evaluation
    As a student logged in the system
    I want to be able to grade myself over the course criterions

    Scenario: Successful Self Grading
    Given I am a student in the "Grades" page
    And I have not graded myself over the criterion "Configure Management"
    And a blank space appear bellow the criterion "Configure Management"
    When I attribute the grade "MPA" to the criterion "Configure Management"
    And the grade "MPA" is not better than the grade assigned by the teacher
    The the grade "MPA" is registered as a sel evaluation grade to the criterion "Configure Management"

    Scenario: Unsuccessful Self Grading
    Given I am a student in the "Grades" page
    And my professor gave me a "MANA" grade for the "Configure Management" criterion
    When I try to attribute a "MA" grade for the "Configure Management"criterion
    Then I am not able to register the grade
    And the message "You cannot assign a grate greater than the one your teacher gave you" appears
    And a popup appears to alert the user
    And a button "ok" is displayed to return to the grading page
    And I am redirected to de grading page
    And the grades "MA" assigned to the criterion "Configure Management" is removed

    Scenario: Grade Consolidation
    Given I am a student in the "Grades" page
    And I have the "Configure Management" criterion to assign a grade
    When I assign a grade to the "Configure Management" criterion
    And It is successfully added
    And I do not have other criterion to assign Grades
    Then the professor is able to consolidate the grades
    And the professor is able to communicate the consolidation to the students