FROM python:3.11
LABEL org.opencontainers.image.authors=""
COPY app.py test.py /app/
WORKDIR /app
RUN pip install flask pytest flake8 
CMD ["python", "app.py"]