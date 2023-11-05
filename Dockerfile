# production environment
FROM nginx:stable-alpine

COPY ./*.zip /usr/share/nginx/html/
COPY ./*.txt /usr/share/nginx/html/
COPY ./*.xml /usr/share/nginx/html/
COPY ./*.exe /usr/share/nginx/html/
COPY ./*.png /usr/share/nginx/html/

RUN rm /etc/nginx/conf.d/default.conf && rm /usr/share/nginx/html/index.html && rm /usr/share/nginx/html/50x.html
COPY nginx.conf /etc/nginx/conf.d
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
