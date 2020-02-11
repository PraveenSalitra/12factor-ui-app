# ## Dependency List and healthchecks

## Generate a healthz.json using the following command during the build
`npm ls --depth=0 --json | jq ".status=\"green\"|.buildDate=\"$BUILD_DATE\"|.gitHash=\"$GIT_HASH\"" > healthz.json`

## Configure nginx route for the `/healthz` path
