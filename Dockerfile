FROM python:3

ARG env=python-dev

WORKDIR /usr/src/app

COPY . .

RUN if ["$env" = "tini"] ; then pip install --no-cache-dir -r requirements/tini.txt ; else pip install --no-cache-dir -r requirements/python-dev.txt ; fi

CMD [ "python", "./server.py" ]
