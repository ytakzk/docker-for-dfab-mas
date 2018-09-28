# docker-for-dfab-mas
Docker image to set up python environment for DFAB MAS program.

# Prerequisite
- [Docker](https://www.docker.com/)

# Setup
- `docker pull ytakzk/dfab-mas`
- `docker run -d --name [CONTAINER NAME] -v [LOCAL DIRECTORY TO MOUNT]:/jupyter -p [PORT]:8888 ytakzk/dfab-mas`
- Open `http://localhost:[PORT]`

Once you created the container, you will be able to start the container by `docker start [CONTAINER NAME]`.  
To remove the container, `docker stop [CONTAINER NAME] && docker rm [CONTAINER NAME]`.

# Dependencies
- [Anaconda](https://hub.docker.com/r/continuumio/anaconda/)
- [COMPAS](https://gramaziokohler.github.io/compas_fab/latest/)

# Environments
- Python 2.7.15 :: Anaconda, Inc.