# docker-for-dfab-mas
Docker image to set up python environment for DFAB MAS program.

# Prerequisite
- [Docker](https://www.docker.com/)

# Setup

#### For a container with no GUI applications such as matplotlib and graphics
1. `docker pull ytakzk/dfab-mas`
2. `docker run -d --name [CONTAINER NAME] -v [LOCAL DIRECTORY TO MOUNT]:/jupyter -p [PORT]:8888 ytakzk/dfab-mas`
3. Open `http://localhost:[PORT]`

#### For a container with GUI applications such as matplotlib and graphics (just for Mac OS)
1. Install [XQuartz](https://www.xquartz.org/)
2. `xeyes &`
3. `docker pull ytakzk/dfab-mas`
4. Get your ip address by `ifconfig en0 | grep inet | awk '$1=="inet" {print $2}'`
5. `docker run -d --name [CONTAINER NAME] -v [LOCAL DIRECTORY TO MOUNT]:/jupyter -p [PORT]:8888 -e DISPLAY=[YOUR IP ADDRESS]:0.0 -v /tmp/.X11-unix:/tmp/.X11-unix ytakzk/dfab-mas`
6. Open `http://localhost:[PORT]`

Once you created the container, you will be able to start the container by `docker start [CONTAINER NAME]`.  
To remove the container, `docker stop [CONTAINER NAME] && docker rm [CONTAINER NAME]`.

If you get connected to the different networks, that means you get a different ip address, you need to do as followings.
1. `docker kill [CONTAINER NAME]`
2. `docker rm [CONTAINER NAME]`
3. Follow the steps from the second one above to run your docker container and open your window.


# Dependencies
- [Anaconda](https://hub.docker.com/r/continuumio/anaconda/)
- [COMPAS](https://gramaziokohler.github.io/compas_fab/latest/)

# Environments
- Python 2.7.15 :: Anaconda, Inc.
