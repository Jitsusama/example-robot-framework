*** Settings ***

Library  OperatingSystem
Library  library.writer  AS  writer

*** Keywords ***

Write info ${message} to the console
  ${output} =  writer.Write To Stdout  message=${message}
  RETURN  ${output}

Write error ${message} to the console
  ${output} =  Write message ${message} to STDERR
  RETURN  ${output}

Verify that ${count} files matching ${pattern} exist in ${path}
  ${files} =  Count Files In Directory  path=${path}  pattern=${pattern}
  Should Be Equal As Integers  ${${count}}  ${files}
