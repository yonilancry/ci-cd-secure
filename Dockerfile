FROM python:3.14.0rc1-alpine

WORKDIR /app

RUN apk update && apk upgrade --no-cache

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 3000
CMD ["python", "app.py"]
