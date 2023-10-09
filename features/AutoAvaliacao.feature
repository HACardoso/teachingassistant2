Feature: Self Evaluation
    As a student logged in the system
    I want to be able to grade myself over the course criterions

    Scenario: Self Grading
    Given I am a student in the "Grades" page
    And I have not graded myself over the criterion "Configure Management"
    Then a blank space should appear bellow the criterion "Configure Management""
