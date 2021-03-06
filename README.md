# wazo-router-call_logd

wazo-router-call_logd provides call management services for the C4 infrastructure.

## Installing wazo-router-call_logd

The server is already provided as a part of [Wazo](http://documentation.wazo.community).
Please refer to [the documentation](http://documentation.wazo.community/en/stable/installation/installsystem.html) for
further details on installing one.

## Tests

### Running unit tests

```
$ tox --recreate -e py37
```

## Docker

The official docker image for this service is `wazo-platform/wazo-router-call_logd`.


### Getting the image

To download the latest image from the docker hub

```sh
docker pull wazo-platform/wazo-router-call_logd
```

### Running wazo-router-call_logd

```sh
docker run wazo-platform/wazo-router-call_logd
```

### Building the image

Building the docker image:

```sh
docker build -t wazo-platform/wazo-router-call_logd .
```

