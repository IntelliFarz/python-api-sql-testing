import pytest
from is_adult import is_adult


def test_age_17():
    assert is_adult(17) is False


def test_age_18():
    assert is_adult(18) is True


def test_age_negative():
    with pytest.raises(ValueError):
        is_adult(-1)
