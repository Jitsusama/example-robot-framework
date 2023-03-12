import pytest

from library import writer


@pytest.mark.parametrize("message", ["hello", "goodbye"])
def test_writes_message_to_stdout(capsys, message: str):
    writer.write_to_stdout(message)
    assert message in capsys.readouterr().out


@pytest.mark.parametrize("message", ["hello", "goodbye"])
def test_writes_message_to_stderr(capsys, message: str):
    writer.write_to_stderr(message)
    assert message in capsys.readouterr().err
