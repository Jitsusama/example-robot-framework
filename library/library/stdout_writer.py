import sys
from typing import TextIO


class Writer:
    def __init__(self, stdout: TextIO = None):
        self.stdout = stdout if stdout else sys.stdout

    def write_to_stdout(self, message: str) -> str:
        """Writes the given message to STDOUT."""
        msg = f"message: {message}"
        print(msg, file=self.stdout)
        return msg
