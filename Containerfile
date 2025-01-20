FROM ubuntu:20.04

EXPOSE 8888/tcp

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=NZDT

RUN apt update -y && apt install -y python3 python3-pip python3-venv
RUN python3 -m venv /jupyter
RUN . /jupyter/bin/activate && pip3 install 'notebook<7' 'ipywidgets==7.1.2' 'ipyauth' 'google-auth' 'google-cloud-secret-manager' && jupyter serverextension enable --py --sys-prefix ipyauth.ipyauth_callback
COPY entrypoint.sh /entrypoint.sh
RUN mkdir /notebooks
COPY example-google-auth.ipynb /notebooks/example-google-auth.ipynb
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]