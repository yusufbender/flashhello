import app

def test_hello():
    response = app.app.test_client().get('/')
    assert response.status_code == 200
    assert b"Merhaba Dunya" in response.data
