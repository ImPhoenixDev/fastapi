FROM python:3.9-slim

COPY . /src

COPY ./requirements.txt /src/requirements.txt

WORKDIR /src

RUN pip install -r requirements.txt

EXPOSE 8000:8000

CMD [ "uvicorn", "app:app", "--host", "0.0.0.0", "--reload" ]