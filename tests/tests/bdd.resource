*** Keywords ***

Message ${message} has been written to the console
  ${printed} =  Write ${message} to the console
  Should Be Equal As Strings  message: ${message}  ${printed}

I do nothing
  No Operation

Robot files should still exist
  Verify that ${2} files matching *.robot exist in ./tests
