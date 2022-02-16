# Workshop instructions

## Getting started

Before going any further, make sure that you have 

- [Installed the Platform.sh CLI](https://docs.platform.sh/development/cli.html)
- [Created a free trial account](https://auth.api.platform.sh/register)

## Setting up

1. `platform login`
1. `git clone https://github.com/platformsh-workshops/nodecongress.git`
1. `cd nodecongress`
1. `platform project:create` (make the default branch `main`)

## Overview of Strapi

1. Structure
1. Main configuration
1. Navigating the `api` codebase
1. `cd api`
1. `yarn --frozen-lockfile`
    - **Tip:** For OSX, it may be necessary to first run `export SHARP_IGNORE_GLOBAL_LIBVIPS=true` if you get a `sharp` or `node-gyp` error at this point.
1. `yarn seed`
1. `yarn develop`
1. Use the following credentials to set up an admin account (you can change after the workshop):
    - First: `Node`
    - Second: `Workshop`
    - Email: `admin@example.com`
    - Pass: `Admin1234`
1. Visit `http://localhost:1337/api/articles`

## Overview of Platform.sh

1. The management console
1. Environment variables
1. Configuration files
1. 
1. The CLI

## Deploying the project

1. `git add.`
1. `git commit -m "Init commit."`
1. `git push platform main`
1. Wait for the deployment to complete.
1. Visit the deployment and re-register the admin user.
1. `cd api`
1. `platform mount:upload --mount public/uploads --source public/uploads`
1. `platform mount:upload --mount .tmp --source .tmp`
1. Verify the deployment

## Switching services

1. `platform environment:branch updates`
1. Verify the new environment in the management console.
1. Update `database.js`
1. Update `.platform/services.yaml`
1. Managed services overview.
1. Add a relationship to `.platform.app.yaml`
1. `git add .`
1. `git commit -m "Add MySQL service."`
1. Verify the (failed deployment)
1. `cd docs`
1. `platform sql < foodadvisor.sql`
1. Verify the environment
1. `platform merge updates`
1. `platform sql -e main < foodadvisor.sql`

## Adding the frontend

1. `cd client`
1. Update `.env.development`
1. `yarn --frozen-lockfile`
1. `yarn dev`
1. Verify the local frontend
1. Add `.platform.app.yaml`
1. Update `.platform/routes.yaml`
1. `git add .`
1. `git commit -m "Add NextJS frontend."`
1. Verify the deployment
1. `platform merge updates`