class Writer:
    # noinspection PyMethodMayBeStatic
    def write_to_stdout(self, message: str) -> str:
        """Writes the given message to STDOUT."""
        msg = f"message: {message}"
        print(msg)
        return msg
