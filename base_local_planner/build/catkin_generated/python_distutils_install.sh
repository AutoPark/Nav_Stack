#!/bin/sh -x

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

cd "/home/naman/catkin_ws/src/navigation-groovy-devel-catkinized/base_local_planner"

# todo --install-layout=deb per platform
# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
/usr/bin/env \
    PYTHONPATH="/usr/local/lib/python2.7/dist-packages:/home/naman/catkin_ws/src/navigation-groovy-devel-catkinized/base_local_planner/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/naman/catkin_ws/src/navigation-groovy-devel-catkinized/base_local_planner/build" \
    "/usr/bin/python" \
    "/home/naman/catkin_ws/src/navigation-groovy-devel-catkinized/base_local_planner/setup.py" \
    build --build-base "/home/naman/catkin_ws/src/navigation-groovy-devel-catkinized/base_local_planner/build" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/usr/local" --install-scripts="/usr/local/bin"
