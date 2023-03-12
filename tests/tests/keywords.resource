*** Settings ***

Library  OperatingSystem
Library  library.stdout_writer.Writer  AS  lib

*** Keywords ***

Write ${message} to the console
  [Tags]  stdout
  ${output} =  lib.Write To Stdout  message=${message}
  RETURN  ${output}

Verify that ${count} files matching ${pattern} exist in ${path}
  [Tags]  filesystem
  ${files} =  Count Files In Directory  path=${path}  pattern=${pattern}
  Should Be Equal As Integers  ${${count}}  ${files}
