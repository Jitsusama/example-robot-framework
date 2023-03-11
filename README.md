# Example Robot Framework Setup

This repository includes a simple Robot framework setup, with a Robot file, using internal keywords
as well as keywords exposed by an included library.

## Setup

Install poetry and then run `poetry install --no-root` from the tests directory. Then run
`poetry run robot -d log tests` from the same directory to run the tests. It should fail the first
time and then succeed on the second attempt.
