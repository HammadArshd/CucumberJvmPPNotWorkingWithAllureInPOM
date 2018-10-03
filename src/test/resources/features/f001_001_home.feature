Feature: Launch LMS and reach to Home page

#  @FunctionalTest @SmokeTest @RegressionTest @End2End
  Scenario: Launch LMS and reach to Home Page
    Given user opens browser
    Then landing page is home page verify by title
