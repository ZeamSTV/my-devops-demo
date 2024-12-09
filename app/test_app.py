import pytest
from app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_home(client):
    # Kiểm tra response trả về đúng
    response = client.get("/")
    assert response.data == b"Hello, DevOps Testing!"
