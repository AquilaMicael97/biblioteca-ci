FROM python:3.13-slim
LABEL org.opencontainers.image.source=https://github.com/AquilaMicael97/biblioteca-ci

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY biblioteca ./biblioteca

EXPOSE 8000
CMD fastapi run biblioteca/main.py --host 0.0.0.0 --port ${PORT:-8000}
