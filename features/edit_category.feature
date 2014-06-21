Feature: Edit Articles Category
  As a blog administrator
  In order to update articles category name
  I want to be able toedit articles category of my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully edit articles category
    Given I am on the new category page
    When I click_link "eidt" for category_title "Foobar"
    And I fill in "category_desription" with "Biba"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Foobar" category
    And I should see "Biba" description
