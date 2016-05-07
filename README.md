# Simplesite

Simplesite is a minimal configuration to start building a static site. Since it uses a custom docker image to compile
and bundle the assets you won't need node, sass or other tools installed.

## Work in progress

This is a work in progress.

## Requisites

* Docker

## How to use it?

1. Clone this repository
2. Write your stuff in `src/`.
3. `$ make prod`
4. Your output will be in `dist/`

## Things you should know

* `src/html` is copied to `dist/`
* `src/styles/main.scss` is the entrypoint for all the scss files.

## Tasks

* *make dev* compiles for development. Includes source maps and does not minify/uglify.
* *make prod* compiles for production. Does NOT include source maps and do minify and uglify your javascript files.
* *make watch* runs *make dev* when something changes under `src/`
* *make clean* deletes your `dist/` dir.

## Under the hood

This project uses a docker image with gulp and a bunch of node stuff so you don't have to worry about the environment
configuration. If you wan't to learn more about how it works, check [this repository](https://github.com/rcoedo/simplesite-compiler).
