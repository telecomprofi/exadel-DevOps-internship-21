FROM nginx:alpine
COPY . /usr/share/nginx/html
ENV DEVOPS='Ihor Ko'
RUN ash -c 'echo -e "<br>ENV Variable DEVOPS=$DEVOPS<br>" >> /usr/share/nginx/html/index.html'
