FROM python:3.7

WORKDIR /app
RUN pip install django && django-admin startproject hello . && ./manage.py migrate
EXPOSE 8000

CMD ["./manage.py", "runserver", "0.0.0.0:8000"]
