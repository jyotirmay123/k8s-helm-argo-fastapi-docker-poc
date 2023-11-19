FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

COPY ./src /app

EXPOSE 80