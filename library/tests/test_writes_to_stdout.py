import pytest

from library import stdout_writer


@pytest.mark.parametrize("message", ["hello", "goodbye"])
def test_writes_message_to_stdout(capsys, message: str):
    writer = stdout_writer.Writer()
    writer.write_to_stdout(message)
    assert message in capsys.readouterr().out
