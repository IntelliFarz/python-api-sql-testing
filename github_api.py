import requests

USERNAMES = ["torvalds", "gvanrossum", "octocat"]


def fetch_user(username):
    url = f"https://api.github.com/users/{username}"
    response = requests.get(url, timeout=10)

    # Verify status code before processing the data
    if response.status_code == 200:
        data = response.json()
        return data["login"], data["public_repos"]

    print(f"Could not fetch '{username}' (status code: {response.status_code})")
    return None


def main():
    for username in USERNAMES:
        result = fetch_user(username)
        if result:
            login, public_repos = result
            print(f"Login: {login} | Public repos: {public_repos}")


if __name__ == "__main__":
    main()
