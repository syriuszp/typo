Feature: Create Articles Category
  As a blog administrator
  In order to simplify navigation trough articles
  I want to be able to add articles category to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create articles category
    Given I am on the new category page
    When I fill in "category_title" with "Foobar"
    And I fill in "category_description" with "Test Foobar"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Foobar" category
    And I should see "Test Foobar" description
