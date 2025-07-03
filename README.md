# 🚀 FlashHello – Flask + Docker + GitHub Actions CI/CD

![CI/CD](https://github.com/yusufbender/flashhello/actions/workflows/main.yml/badge.svg)
![Repo views](https://komarev.com/ghpvc/?username=yusufbender&repo=flashhello&color=blue)


Basit bir Flask uygulaması üzerinde CI/CD süreçlerini uygulayarak, modern yazılım dağıtımı adımlarını deneyimledim.  
Her kod değişikliğinde otomatik olarak test çalışıyor, Docker image build ediliyor ve DockerHub'a gönderiliyor.  
Opsiyonel olarak Google Cloud'a da deploy edilebilir hale getirildi.

---

## 📦 Uygulama Hakkında

- `GET /` endpoint’i: `Merhaba Dünya!` mesajı döner
- Basit, test edilebilir bir Flask app

---

## 🛠️ Kullanılan Teknolojiler

- `Flask` – Web framework
- `Docker` – Uygulama paketleme ve dağıtım
- `GitHub Actions` – CI/CD otomasyonu
- `DockerHub` – Container registry
- `pytest` – Test framework

---

## 🔧 Projeyi Lokal Çalıştırma

```bash
git clone https://github.com/yusufbender/flashhello.git
cd flashhello
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
python app.py
```

Tarayıcıdan kontrol et: [http://localhost:5000](http://localhost:5000)

---

## 🐳 Docker ile Çalıştırma

```bash
docker build -t flashhello-app .
docker run -p 5000:5000 flashhello-app
```

---

## ✅ Test Çalıştırma

```bash
pytest test_app.py
```

---

## ⚙️ CI/CD Süreci (GitHub Actions)

Her `git push` işleminde:

1. Kod checkout edilir  
2. Python ortamı kurulur  
3. Testler çalıştırılır  
4. Docker image build edilir  
5. DockerHub'a push edilir  

CI/CD workflow: `.github/workflows/main.yml` dosyasında

---

## 📤 DockerHub

- [https://hub.docker.com/r/yusufbender/flashhello-app](https://hub.docker.com/r/yusufbender/flashhello-app)
- `docker pull yusufbender/flashhello-app`

---

## ☁️ Google Cloud Deploy (Opsiyonel)

Google Cloud Run üzerinden deploy edilebilir:

```bash
gcloud run deploy flashhello-app \
  --image=yusufbender/flashhello-app \
  --platform=managed \
  --region=europe-west1 \
  --allow-unauthenticated
```

Alternatif: Cloud Console → “Deploy from DockerHub image”

---

## 🔗 Bağlantılar

- [Proje Repo](https://github.com/yusufbender/flashhello)
- [DockerHub Image](https://hub.docker.com/r/yusufbender/flashhello-app)
