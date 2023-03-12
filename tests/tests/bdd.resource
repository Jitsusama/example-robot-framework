*** Settings ***

Resource  keywords.resource

*** Keywords ***

Message ${message} has been written to the console
  ${printed} =  Write ${message} to the console
  Should Be Equal As Strings  message: ${message}  ${printed}

I do nothing
  No Operation

A total of ${count} files named ${pattern} should still exist in ${path}
  Verify that ${count} files matching ${pattern} exist in ${path}
