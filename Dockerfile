# 1. Python tabanlı bir image kullan
FROM python:3.10-slim

# 2. Çalışma dizinini belirle
WORKDIR /app

# 3. Dosyaları container içine kopyala
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Kalan dosyaları kopyala
COPY . .

# 5. Uygulamayı çalıştır
CMD ["python", "app.py"]
