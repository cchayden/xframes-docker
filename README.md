Build and Run XFrames Docker
============================

These commands run Spark and XFrames in a docker,
which you can access with Jupyter.

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

This shows the Spark console