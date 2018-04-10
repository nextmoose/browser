```
docker container run --entrypoint bash --mount type=bind,source=/srv/host/tmp/.X11-unix,destination=/tmp/.X11-unix,readonly=true --env DISPLAY --interactive --tty --rm --privileged -v /srv/host/var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket:ro browser 
```