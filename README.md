# Laravel Docker

[![Build Status][travis-badge]][travis-link] [![Docker Automated Build Status][docker-build-badge]][docker-hub-link]

A customised Docker image meant for Laravel applications

## Usage
`docker pull jasonheecs/laravel-docker`

## Testing
Testing is done via Rspec and [Hadolint](https://github.com/hadolint/hadolint). 

To run Rspec tests:
```bash
gem install bundler
bundle install
bundle exec rspec
```

To run linting tests on the Dockerfiles, make sure Hadolint installed and:
```bash
hadolint ./7.4/Dockerfile
```

Refer to the [travis.yml](.travis.yml) file and [Travis build logs][travis-link] for details on the automated tests and expected outputs.

## License
MIT

[docker-build-badge]: https://img.shields.io/docker/cloud/build/jasonheecs/laravel-docker.svg
[docker-hub-link]: https://hub.docker.com/r/jasonheecs/laravel-docker/
[travis-badge]: https://travis-ci.com/jasonheecs/laravel-docker.svg?branch=master
[travis-link]: https://travis-ci.com/jasonheecs/laravel-docker
