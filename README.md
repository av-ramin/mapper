# How to build docker image and push to docker hub

First, if no devel folder present, go to mapper folder and execute 'catkin_make' command

## For arm (DART companion)
### Push to avalorai
- docker buildx build --platform linux/arm64 --load -t avalorai/mapper:arm .
- docker push avalorai/mapper:arm
### Push to avraminariana
- docker buildx build --platform linux/arm64 --load -t avraminariana/mapper:arm .
    - if error '272.4 Invoking "make -j5 -l5" failed' occurs, try to reduce the number of threads used for the specific line (e.g. append -j2) 
- docker push avraminariana/mapper:arm


## For x86 (other machines)
- sudo docker build --no-cache -t avalorai/mapper:x86 .
- docker push avalorai/mapper:x86