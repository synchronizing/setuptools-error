FROM python:3.8

RUN pip install --upgrade setuptools

WORKDIR /opt/
COPY . test
WORKDIR /opt/test
RUN pip install -e .

CMD ["/bin/bash"]
