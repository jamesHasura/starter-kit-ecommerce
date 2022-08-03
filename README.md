# starter-kit-ecommerce

The starter kit is broken into four parts:

- Response Transform Examples
- Organization-Based Authz Examples
- Ecommerce Shopping Cart Example
- Auth0 Example

## Preqrequisites

Please ensure the Hasura CLI is installed. see the following link for
instructions on how to install:
<https://hasura.io/docs/latest/hasura-cli/install-hasura-cli/>

## Response Transform Example

### Setup

- `docker-compose up -d`
- `cd /hasura`
- `hasura metadata apply`
- `hasura migrate apply`
- `hasura metadata clear`
- `hasura metadata apply`
- `cd ../data-api`
- `npm install`
- `npm start`

### Overview

The response transform example showcases how you can use kriti to transform
action responses. Look through the hasura_sample_metadata.json file to see two
examples of how these transforms are done.

## Organization-Based Authz Example

### Setup

- `docker-compose up -d`
- `cd /hasura`
- `hasura metadata apply`
- `hasura migrate apply`
- `hasura metadata clear`
- `hasura metadata apply`
- `cd ../data-api`
- `npm install`
- `npm start`

### Overview

This project showcases how you can use Hasura's standard permission system to
create a organization based authz scheme. This is a common pattern needed in
various applications in which permissions must be implemented such that:

"Each entity in the group should only be able to see/interact with other
entities in the same group(s)"

This approach and principle works for any "group"-like structure, such as:

- teams
- Organizations
- Tenants in a Multi-tenant app
- Chat group-messages, & more!

## Ecommerce Shopping-Cart/Checkout Example

Please see the following github repository for this example:

<https://github.com/hasura/hasura-ecommerce>

## Auth0 Documentation

Please see the following documentation for a step-by-step guide on how to
implement Auth0:

<https://hasura.io/docs/latest/guides/integrations/auth0-jwt/>
