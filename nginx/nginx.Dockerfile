FROM nginx

COPY nginx/nginx.local.conf /etc/nginx/nginx.conf
COPY nginx/my-x-dns-local.crt /etc/ssl/certs/my-x-dns-local.globomantics.com.crt
COPY nginx/my-x-dns-local.key /etc/ssl/private/my-x-dns-local.globomantics.com.key