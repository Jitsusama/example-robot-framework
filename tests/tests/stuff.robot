*** Settings ***

Documentation  Stuffy tests.
Library  OperatingSystem
Library  library.stdout_writer.Writer

*** Test Cases ***

Stuff gets written.
  Write To Stdout  message=sionara suckers

1 TOML file is present.
  [Tags]  filesystem  toml
  [Documentation]  Robot files are uglier than my brother cross-dressing.

  ${files} =  Count Files In Directory  path=./  pattern=*.toml
  Should Be Equal As Integers  ${files}  1

Expected files of type exist.
  [Tags]  filesystem
  [Template]  Pattern Count

  path=./       pattern=*.toml   count=1
  path=./log    pattern=*.html   count=2
  path=./tests  pattern=*.robot  count=2

*** Keywords ***

Pattern Count
  [Arguments]  ${path}  ${pattern}  ${count}

  ${files} =  Count Files In Directory  path=${path}  pattern=${pattern}
  Should Be Equal As Integers  ${count}  ${files}
