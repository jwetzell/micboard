FROM node:20-alpine AS micboard_frontend
WORKDIR /home/node/app
COPY package.json package.json
RUN npm install
COPY . .
RUN npm run build

FROM python:3-alpine AS micboard_server

LABEL org.opencontainers.image.authors="karl@micboard.io"
WORKDIR /usr/src/app

COPY py/requirements.txt py/requirements.txt

RUN pip3 install -r py/requirements.txt

COPY *.json ./
COPY *.html ./
COPY py py

COPY --from=micboard_frontend /home/node/app/static /usr/src/app/static/
EXPOSE 8058

CMD ["python3", "py/micboard.py"]
