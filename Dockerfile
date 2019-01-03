FROM continuumio/miniconda

ADD environment.yml .
RUN conda create --copy -p /opt/env

ENV PATH="/opt/env/bin:$PATH"

EXPOSE 20124

RUN mkdir /work
ADD . /work
WORKDIR /work

ENTRYPOINT ["python", "app.py"]