from dataclasses import dataclass


@dataclass
class User:
    name: str
    active: bool = True


def greet(user: User) -> str:
    """Return a greeting for *user*."""
    label = f"Hello, {user.name}!"
    return label if user.active else "Goodbye"


if __name__ == "__main__":
    alice = User(name="Alice")
    print(greet(alice))
