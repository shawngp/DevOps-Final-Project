FROM python:3.11
LABEL org.opencontainers.image.authors=""
COPY app.py test.py /app/
COPY /templates/index.html /app/templates/
WORKDIR /app
RUN pip install flask pytest flake8 requests python-dotenv
CMD ["python", "app.py"]
