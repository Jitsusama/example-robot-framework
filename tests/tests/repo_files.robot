*** Settings ***

Documentation  Verify that files exist as expected.
Resource       keywords.resource

*** Test Cases ***

Expected Files of Type Exist
  [Template]  Verify that ${count} files matching ${pattern} exist in ${path}
  [Tags]      filesystem

  1  *.toml   ./
  2  *.html   ../log
  3  *.robot  ./tests
