FROM nginx:1.27.2-alpine

# .conf 파일 복사
COPY ./my_conf.conf /etc/nginx/conf.d/my_conf.conf

# 디렉토리 확인
RUN ls -l /etc/nginx/conf.d/

# 불필요한 파일 삭제
RUN rm /etc/nginx/conf.d/default.conf

# 포트 열기
EXPOSE 80

# Nginx 실행
CMD ["nginx", "-g", "daemon off;"]
