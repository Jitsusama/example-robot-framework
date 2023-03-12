*** Settings ***

Documentation  Stuffy tests.
Test Tags      stuff
Resource       bdd.resource
Resource       keywords.resource

*** Test Cases ***

Robot Files Exist After Writing Message
  Given message adios has been written to the console
  When I do nothing
  Then robot files should still exist

Writes Out Messages
  [Documentation]  Robot files are uglier than my brother cross-dressing.
  [Tags]           stdout

  ${printed} =  Write sionara suckers to the console
  Should Be Equal As Strings  message: sionara suckers  ${printed}

Expected Files of Type Exist
  [Template]  Verify that ${count} files matching ${pattern} exist in ${path}

  1  *.toml   ./
  2  *.html   ../log
  2  *.robot  ./tests
