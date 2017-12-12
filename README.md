# auth0-rails-example

Sampled from Auth0 existing repo:
https://github.com/auth0-samples/auth0-rubyonrails-sample

This example shows how to add login capabilities to your Rails application using the Auth0's hosted login page and the OmniAuth authentication system. It also shows how to fetch User Profile information from a logged-in user as well as how to prevent users from executing controller actions unless they're authenticated.

This example also uses Postgres with Docker Compose. The elements of [this tutorial](https://auth0.com/blog/rails-5-with-auth0/) were brought in to show a working sample.

## Environment Variables
You need to set the ClientSecret, ClientId, Domain, CallbackURL and Audience for your Auth0 app as environment variables with the following names respectively: `AUTH0_CLIENT_SECRET`, `AUTH0_CLIENT_ID`, `AUTH0_DOMAIN`, `AUTH0_CALLBACK_URL` and `AUTH0_AUIDIENCE`.

There are also environment variables associated with the Postgresql Database. These can be left as defaults or changed to match docker-compose.yml.

__Note:__ If you are not implementing any API, leave this variable empty, will be set with `https://AUTH0_DOMAIN/userinfo`.

Set the environment variables in `.env` to match those your Auth0 Client.

````bash
# .env file
AUTH0_CLIENT_ID=YOUR_CLIENT_ID
AUTH0_CLIENT_SECRET=YOUR_CLIENT_SECRET
AUTH0_DOMAIN=<YOUR_TENANT>.auth0.com
AUTH0_CALLBACK_URL=http://localhost:3000/auth/auth0/callback
AUTH0_AUDIENCE=YOUR_API_IDENTIFIER
POSTGRES_HOST=postgres
POSTGRES_DB=rails
POSTGRES_USER=rails
POSTGRES_PASSWORD=rails
````

## Running the Sample Application With Docker
In order to run the example you need to have `docker` and `docker-compose` installed.

Execute in command line `sh exec.sh` to run the Docker in Linux, or `.\exec.ps1` to run the Docker in Windows.

## What is Auth0?

Auth0 helps you to:

* Add authentication with [multiple authentication sources](https://docs.auth0.com/identityproviders), either social like **Google, Facebook, Microsoft Account, LinkedIn, GitHub, Twitter, Box, Salesforce, amont others**, or enterprise identity systems like **Windows Azure AD, Google Apps, Active Directory, ADFS or any SAML Identity Provider**.
* Add authentication through more traditional **[username/password databases](https://docs.auth0.com/mysql-connection-tutorial)**.
* Add support for **[linking different user accounts](https://docs.auth0.com/link-accounts)** with the same user.
* Support for generating signed [Json Web Tokens](https://docs.auth0.com/jwt) to call your APIs and **flow the user identity** securely.
* Analytics of how, when and where users are logging in.
* Pull data from other sources and add it to the user profile, through [JavaScript rules](https://docs.auth0.com/rules).

## Create a free Auth0 account

1. Go to [Auth0](https://auth0.com/signup) and click Sign Up.
2. Use any Social connection to login.

## License

This project is licensed under the MIT license. See the [LICENSE](LICENSE.txt) file for more info.
