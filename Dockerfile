FROM jupyter/pyspark-notebook

MAINTAINER XFrames Project <cchayden@gmail.com>

VOLUME /notebooks
VOLUME /data

EXPOSE 8888
EXPOSE 4040-4048

RUN pip2 install xframes

ENV SPARK_CONF_DIR=/base/conf
ENV XFRAMES_CONFIG_DIR=/base/conf

COPY conf /base/conf

CMD ["start-notebook.sh", "--NotebookApp.token=''"]