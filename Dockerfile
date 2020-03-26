FROM python:3.8.2
ENV PYTHONUNBUFFERED 1

RUN mkdir /myapp
WORKDIR /myapp

RUN pip install poetry
COPY pyproject.toml poetry.lock /myapp/

RUN poetry install --no-root

COPY . .
RUN poetry install

EXPOSE 8000

RUN poetry run pip install djangorestframework==3.11.0

CMD ["poetry", "run", "python", "manage.py", "runserver", "0:8000"]
