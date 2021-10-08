#language: en
@discourse @challenge
Feature: Automation Activity 1

  @all_closed_topics
  Scenario: Print the title of all closed topics
    Given Access website 'Discourse'
    When Access the Demo page
    And Scroll to the bottom of the page
    Then The title of all closed threads must be displayed

  @number_items
  Scenario: Number of items in each category and those that do not have a category
    Given Access website 'Discourse'
    When Access the Demo page
    And Scroll to the bottom of the page
    Then The Number of items must be displayed

  @greater_view
  Scenario: The title of the topic that contains the most views
    Given Access website 'Discourse'
    When Access the Demo page
    And Scroll to the bottom of the page
    Then The greater view be displayed
