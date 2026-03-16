FROM python:3.13-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get upgrade -y && apt-get clean && && rm -rf /var/lib/apt/lists/* && pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["python","app.py"]