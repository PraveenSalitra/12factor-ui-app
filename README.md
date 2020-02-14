## Using Environment Variables baked at Build Time
**Use Branch**: `cra-buildvars`     
https://create-react-app.dev/docs/adding-custom-environment-variables/

1. Create `env` variables with prefix `REACT_APP_`
1. Have a `.env` file but don't put it in version control
1. Use `process.env.<ENV_VAR_NAME>` in the code
1. Or, Use `%ENV_VAR_NAME%` in the HTML code
1. Run `npm run start` or `npm run build` and inspect the generated static files
1. Problems: Cannot follow `build once, and deploy many` approach. Every environment needs a different build.


## Using Environment Variables within nginx docker containers
**Use Branch**: `envars`
1. Have a templated config for constants outside the core code
1. Have a `.env` file but don't put it in version control
1. `envsubst` utility is bundled with alpine docker image
1. Provide environment variable values at the run time (`docker run --env MYVAR1=foo`)
1. Local environments: Use `.env.local` files along with a `npm` utility called `envsub` that works almost similar to `envsubst` above.


## Generate Dependency List and healthchecks for nginx docker containers
**Use Branch**: `deps`
1. Generate a healthz.json using the following command during the build     
`npm ls --depth=0 --json | jq ".status=\"green\"|.buildDate=\"$BUILD_DATE\"|.gitHash=\"$GIT_HASH\"" > healthz.json`

1. Configure nginx route for the `/healthz` path
