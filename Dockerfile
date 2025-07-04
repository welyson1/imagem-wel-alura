FROM python:3.13.5-alpine3.22

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

EXPOSE 8000

CMD uvicorn app:app --host 0.0.0.0 --port 8000 --reload