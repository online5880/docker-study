FROM ubuntu:20.04

# 작업 디렉토리 설정
WORKDIR /app

# Python 및 pip 설치
RUN apt-get update && apt-get install -y python3 python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# pip 업그레이드 (Python 모듈로 실행)
RUN python3 -m pip install --upgrade pip

# requirements.txt 복사 및 의존성 설치
COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt

# 애플리케이션 코드 복사
COPY . .

# 작업 디렉토리를 manage.py가 있는 디렉토리로 변경
WORKDIR /app/django_docker

# Django 서버 실행
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
