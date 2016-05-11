# Simplesite

Simplesite is a minimal configuration to start building a static site. It uses a custom docker image to compile
and bundle the assets, so you won't need node, sass or other tools installed.

## Requisites

* Docker

## How to use it?

1. Clone this repository
2. Write your stuff in `src/`.
3. `$ make prod`
4. Your output will be in `dist/`

## Javascript

If you rely heavily on javascript I recommend to keep your js as a separate submodule. You can bundle it yourself
with your favourite tool and throw the bundle in src/static.

## Things you should know

* `src/html` is copied to `dist/`
* `src/styles/main.scss` is the entrypoint for all the scss files.

## Tasks

* *make dev* compiles for development. Includes source maps.
* *make prod* compiles for production. Does not include source maps.
* *make watch* runs *make dev* when something changes under `src/`. Supports livereload.
* *make clean* deletes your `dist/` dir.

## Under the hood

This project uses a docker image with gulp and a bunch of node stuff so you don't have to worry about the environment
configuration. If you wan't to learn more about how it works, check [this repository](https://github.com/rcoedo/simplesite-compiler).
