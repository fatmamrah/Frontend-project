import requests

def test_frontend_app():
    url = "http://localhost:80"  # URL de votre application
    try:
        response = requests.get(url)
        assert response.status_code == 200, f"Expected 200 but got {response.status_code}"
        assert "Welcome Devops App" in response.text, "Page content does not match expected text"
        print("Test Passed: Frontend is working correctly.")
    except Exception as e:
        print(f"Test Failed: {e}")
        exit(1)

if __name__ == "__main__":
    test_frontend_app()
