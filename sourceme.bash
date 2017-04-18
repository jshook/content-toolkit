alias hugo="sudo docker run --rm -ti -v $(pwd):$(pwd) -w $(pwd) --network="host" -p 1313:1313 jshook/content-toolkit"
