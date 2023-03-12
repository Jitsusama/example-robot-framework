import sys
from robot.api.deco import keyword


def write_to_stdout(message: str) -> str:
    """Writes the given message to STDOUT."""
    msg = f"message: {message}"
    print(msg)
    return msg


@keyword("Write message ${message} to STDERR", types=[str], tags=["console"])
def write_to_stderr(message: str) -> str:
    """Writes the given message to STDERR."""
    msg = f"message: {message}"
    print(msg, file=sys.stderr)
    return msg
