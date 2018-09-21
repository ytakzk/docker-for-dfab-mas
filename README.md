# docker-for-dfab-mas
Docker image to set up python environment for DFAB MAS program.

# Prerequisite
- [Docker](https://www.docker.com/)

# Setup
- `docker pull ytakzk/dfab-mas`
- `docker run -d --name [CONTAINER NAME] -v [LOCAL DIRECTORY TO MOUNT]:/jupyter -p [PORT]:8888 dfab-mas`

# Dependencies
- [Anaconda](https://hub.docker.com/r/continuumio/anaconda/)
- [COMPAS](https://gramaziokohler.github.io/compas_fab/latest/)

# Environments
- Python 2.7.15 :: Anaconda, Inc.
