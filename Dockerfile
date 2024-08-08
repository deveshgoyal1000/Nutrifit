FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY . /app/

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
