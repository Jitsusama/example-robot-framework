*** Settings ***

Documentation  Verify user journeys.
Resource       bdd.resource

*** Test Cases ***

Robot Files Exist After Writing Message
  Given message adios has been written to the console
   When I do nothing
   Then a total of 3 files named *.robot should still exist in ./tests
