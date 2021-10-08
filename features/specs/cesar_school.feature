#language: en
@cesar_school @challenge
Feature: Automation Activity 2

  @blog_cesar
  Scenario: Print the information on the blog
    Given Access website 'Cesar School'
    And Access the Blog page
    When Save the information about post 2
    And Save the information about post 3
    And Save the address
    Then Print the informations
    