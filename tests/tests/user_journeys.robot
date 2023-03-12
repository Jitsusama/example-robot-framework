*** Settings ***

Documentation  Verify user journeys.
Resource       bdd.resource
Test Tags      stdout  filesystem

*** Test Cases ***

Robot Files Exist After Writing Message
  Given info message hola has been written to the console
    And error message sionara has been written to the console
   When I do nothing
   Then a total of 3 files named *.robot should still exist in ./tests
