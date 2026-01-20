FROM python:3.10-slim

WORKDIR /app
echo "hi bruh"

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000

CMD ["python3","app.py"]
