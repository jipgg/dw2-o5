# Basisimage met nginx
FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY html/ /usr/share/nginx/html/

RUN date > /usr/share/nginx/html/buildtime.txt

EXPOSE 81

CMD ["nginx", "-g", "daemon off;"]
