Run XFrames Docker From dockerHub
=================================

These commands run Spark and XFrames in a docker,
which you can access with Jupyter.

Run
-----------------
Make sure there is a `notebooks` and `data` directory.

    docker run -d --rm --name xframes \
    -p 8888:8888 \
    -v $PWD/notebooks:/home/jovyan/work \
    -v $PWD/data /data \
    cchayden/xframes
    
Then browse to localhost:8888.
Store data files in the data directory.
From withing the notebook, access then via /data/<file>




Build and Run XFrames Docker
============================

Build
-----
    build-xframes-docker

Run
---
    run-xframes-docker

Stop Docker
-----------
    stop-xframes-docker

Enter Docker
------------
    enter-xframes-docker
    
Using XFrames Docker
====================

Run notebook
------------
Browse to localhost:8888.

You can test by creatng a (python2) notebook, and then
entering the test program in the first call.

    from xframes import XFrame

    xf = XFrame({'id': [1, 2, 3], 'val': ['a', 'b', 'c']})
    print xf

View spark console
------------------
Browse to localhost:4040.

This shows the Spark console.