# Minimal Python Environment for `pip-compile`

This repository defines a minimal [Docker image](Dockerfile) based on Alpine
Linux 3.8 and Python 3.6 that provides a minimal environment with
[`pip-tools`](https://pypi.org/project/pip-tools/) in order to lock requirements
files.

## Usage

Simply mount your requirements file to `/opt` and run the container. The [Docker
entrypoint](https://docs.docker.com/engine/reference/builder/#entrypoint) is
`pip-compile --verbose --generate-hashes`.

```bash
docker run --rm --mount "source=.,target=/opt,type=bind" pip-compile:3.6-alpine3.8 requirements.in
```

This will create a corresponding compiled `.txt` file in the mounted directory;
in this example `./requirements.txt`.

## Copyright

* Copyright © 2019, Novo Nordisk Foundation Center for Biosustainability,
  Technical University of Denmark.
* Free software licensed under the [Apache License, Version 2.0](LICENSE).

