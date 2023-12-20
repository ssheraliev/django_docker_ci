FROM python:3.11-alpine
WORKDIR /django_docker_ci
COPY ./ /django_docker_ci
RUN apk update && pip install -r /django_docker_ci/requirements.txt --no-cache-dir
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]