# robototes-website-team

[![Build Status](https://semaphoreci.com/api/v1/robototes/robototes-website-team/branches/master/shields_badge.svg)](https://semaphoreci.com/robototes/robototes-website-team)
[![David](https://img.shields.io/david/robototes/robototes-website-team.svg)](https://david-dm.org/robototes/robototes-website-team#info=dependencies)
[![Codecov branch](https://img.shields.io/codecov/c/github/robototes/robototes-website-team/master.svg)](https://codecov.io/gh/robototes/robototes-website-team/branches/master)
[![codebeat badge](https://codebeat.co/badges/7ee36ecc-9255-47b0-9ae5-628e31917707)](https://codebeat.co/projects/github-com-robototes-robototes-website-team-master)
[![Greenkeeper badge](https://img.shields.io/badge/greenkeeper-enabled-brightgreen.svg)](https://greenkeeper.io/)
[![JavaScript Style Guide](https://img.shields.io/badge/code_style-standard-brightgreen.svg)](https://standardjs.com)
[![GO ROBOTOTES!](https://img.shields.io/badge/GO-ROBOTOTES!-brightred.svg)](https://www.robototes.com)

### About

This repository is a Docker microservice devoted to the team-only section of the
[Robototes' Website](https://www.robototes.com). The team-only section contains helpful resources, internal
announcements, and much more that can only be accessed by members of the Robototes via login.

For common documentation regarding the requirements, upkeep, and testing of our microservices, please see our
[global documentation](https://github.com/robototes/robototes-website/blob/master/DOCS.md). Sections
regarding microservice-specific configuration, features, and differences in commands can be found below.

### <a id="configuration">Configuring the server</a>

The following environment variables can be set, the server will not start without the ones marked *required*:

* `IP` (*required, default `0.0.0.0`*) The IP to run the server on
* `PORT` (*required, default `3000`*) The port to listen for requests on
* `DOMAIN` (*required*) The second-level domain that the server resides on
* `HPKP_HASHES` (*required*) see [HPKP Hashes](#hpkphashes)
* `AUTH0_CLIENT_ID` (*required*) see [Auth0](#auth0)
* `AUTH0_DOMAIN` (*required*) see [Auth0](#auth0)
* `AUTH0_CLIENT_SECRET` (*required*) see [Auth0](#auth0)
* `DEBUG` (*optional*) see [Debug mode](#debugmode)
* `DATABASE_HOST` (*required*) The IP address that the MongoDB server is listening on
* `DATABASE_PORT` (*required*) The port that the MongoDB server is listening on

##### <a id="hpkphashes">HPKP Hashes</a>

HPKP, or HTTPS Public Key Pinning, is a whitelist for the certificates, intermediary CAs, and CAs
so that our cert cannot be replaced by another others. The following is the recommended set to
include:

* `lCppFqbkrlJ3EcVFAkeip0+44VaoJUymbnOaEUk7tEU=` (AddTrust External CA Root)
* `58qRu/uxh4gFezqAcERupSkRYBlBAvfcw7mEjGPLnNU=` (Comodo ECC CA)
* `grX4Ta9HpZx6tSHkmCrvpApTQGo67CYDnvprLg5yRME=` (Comodo RSA CA)
* `klO23nT2ehFDXCfx3eHTDRESMz3asj1muO+4aIdjiuY=` (Comodo RSA Domain Validation Secure Server CA)
* `x9SZw6TwIqfmvrLZ/kz1o0Ossjmn728BnBKpUFqGNVM=` (Comodo ECC Domain Validation Secure Server CA)
* `tey1EE7fk3hATntrqvJd0pRDLpjqawZ7YSlOiA/staQ=` (sni32250.cloudflaressl.com, for robototes.com)

### <a id="debugmode">Debug mode</a>

Refer to our [common documentation](https://github.com/robototes/robototes-website/blob/master/DOCS.md)
for an overview of debug mode. In this microservice, debug mode changes the following:

* Sets `/robots.txt` to the debug version set in the `seo.js` config
* Disables page caching
* Enables extra information on error pages
* Enables Pug debug mode

The recommended debug filter for this project is `robototes-website-team:*,http`.

### <a id="auth0">Auth0</a>

We use [Auth0](https://auth0.com/) to authenticate team members to private sections of our website. By
letting Auth0 handle logins, we don't have to worry about storing passwords, and we can simply use a
polished and easy-to-implement system to handle our authentication.

### Maintainers

[@dannytech](https://github.com/dannytech) and
[@TAKBS2412](https://github.com/TAKBS2412)

### Contributing/Vulnerability disclosure

See our common [CONTRIBUTING.md](https://github.com/robototes/robototes-website/blob/master/CONTRIBUTING.md)

### License

Copyright &copy; 2017 Sammamish Robotics <robototes2412@gmail.com>, All rights reserved.

Any copying and/or distributing and/or use in commercial or non-commercial environments
via any medium of this project without the express permission of Robotics Leadership is strictly prohibited.
