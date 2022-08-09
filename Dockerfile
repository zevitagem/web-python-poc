FROM python:3

ARG APP_FOLDER

WORKDIR /usr/src/$APP_FOLDER

COPY ./ ./

RUN pip install --no-cache-dir -r source/requirements.txt

CMD [ "python", "-m", "http.server", "8080" ]

#EXPOSE 8080
