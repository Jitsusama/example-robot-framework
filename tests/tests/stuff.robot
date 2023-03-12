*** Settings ***

Documentation  Stuffy tests.
Test Tags      stuff
Library        OperatingSystem
Library        library.stdout_writer.Writer  AS  lib

*** Test Cases ***

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

*** Keywords ***

Write ${message} to the console
  ${output} =  lib.Write To Stdout  ${message}
  RETURN  ${output}

Verify that ${count} files matching ${pattern} exist in ${path}
  [Tags]  filesystem

  ${files} =  Count Files In Directory  path=${path}  pattern=${pattern}
  Should Be Equal As Integers  ${${count}}  ${files}
