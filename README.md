Run XFrames Docker From DockerHub
=================================

These commands run Spark and XFrames in a docker,
that you can access with Jupyter.

Run
---
Make sure there is a `notebooks` and `data` directory.
Then:

    docker run -d --rm --name xframes \
    -p 8888:8888 \
    -v $PWD/notebooks:/home/jovyan/work \
    -v $PWD/data /data \
    cchayden/xframes
    
Then browse to `localhost:8888` to enter the notebook.

If you want, you can replace `$PWD/notebooks` and `$PWD/data` with
other directories on your machine.
These directories store the notebooks and data that you access
through the notebook.

To stop the docker:

    docker stop xframes

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

From within the notebook, access the data via `/data/<file>`
