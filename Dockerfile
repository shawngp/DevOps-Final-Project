FROM python:3.11
ENV KEY=${KEY} ENDPOINT=${ENDPOINT} LOCATION=${LOCATION}
LABEL org.opencontainers.image.authors=""
COPY app.py test.py /app/
COPY /templates/index.html /app/templates/
WORKDIR /app
RUN pip install flask pytest flake8 requests python-dotenv
CMD ["cmd","python", "app.py"]
