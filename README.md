<p align="left">
    <a href="https://platform.sh">
        <img src="https://platform.sh/logos/redesign/Platformsh_logo_black.svg" width="150px">
    </a>
</p>
<br/><br/>
<p align="center">
  <a href="https://platform.sh/marketplace/strapi">
    <img style="width: 200px;" src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/899069a8-ac49-491f-b2d2-791b27799699/Logo.WhiteBackground.svg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220216%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220216T120245Z&X-Amz-Expires=86400&X-Amz-Signature=f9452e6e4fbfee9e9e2bb593d34614d6cb291c1d8c1cdc3a407e15442bf34696&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Logo.WhiteBackground.svg%22&x-id=GetObject" />
  </a>

  <h2 align="center">Deploying a decoupled restaurant review site to production with Strapi and Platform.sh</h2>
</p>
<br/><br/>

This workshop will take you through the steps of building a production-ready Strapi instance on Platform.sh. Platform.sh is a second-generation Platform-as-a-Service built especially for continuous deployment. It allows you to host web applications on the cloud while making your development and testing workflows more productive.

During this workshop, we will be using [Strapi's FoodAdvisor demo](https://github.com/strapi/foodadvisor) as a guide. We'll deploy an updated version of that repository to Platform.sh, and then we'll make incremental changes as we build out the app, exploring how configuration and deployments work along the way.

* [Before the workshop](#before-the-workshop)
* [Workshop outline](#workshop-outline)
* [Contacts](#contacts)
* [Get started](#get-started)

## Before the workshop

### 1. Install the CLI

During the workshop we will inspect, modify, and interact with your project on Platform.sh while we set up Strapi. One of the most important tools for doing this is the Platform.sh CLI, so it will be helpful to [have it installed](https://docs.platform.sh/development/cli.html) before starting. 

```bash
curl -sS https://platform.sh/cli/installer | php
```

> **Note:**
>
> In some Windows terminals you may need `php.exe` instead of `php`. Windows 10 users may run into some trouble later in the demo, especially when SSHing into the container and when importing the demo database. Let us know in `#platformsh-workshop` if you are using Windows 10 so that we can help you set up the CLI while the conference is going on.

### 2. Start a 30 day free trial

[Create an account](https://auth.api.platform.sh/register) on Platform.sh, which will give you access to projects for 30 days. 

## Workshop outline

- Getting started
- Overview of Strapi
- Overview of Platform.sh
- Deploying the project
- Switching services
- Adding the frontend

## Contacts

During the workshop, members of the Platform.sh team will be present on the Node Congress Discord within the `#node-workshops` channel. You will find a thread in that channel for this workshop under its title.

At any time during the conference feel free to message our team for more information about Platform.sh. 

- `@chad`: Chad Carlson
- `@Shedrack Akintayo`: Shedrack Akintayo

## Get started

If you've completed all of the [*Before the workshop*](#before-the-workshop) steps above, feel free to move onto the [Introduction](docs/instructions.md).

