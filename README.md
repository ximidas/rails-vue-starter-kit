# Rails + VueJS + Tailwind CSS extended starter kit
![rails_vuejs_tailwindcss](https://user-images.githubusercontent.com/6073852/64654764-e8c21e80-d432-11e9-831c-cc81d990b803.png)

Starter kit for Ruby on Rails framework with pre-configured PostgreSQL, VueJS components, Tailwind CSS, FontAwesome icons, Turbolinks, I18n coverage on Rails views and VueJS components.

Turbolinks works with Rails Views and VueJS components and works with I18n also.

This starter kit also contains admin side and can be accessed via your_url.example/admin

Login data can be found in ../db/seeds.rb file.

![1](https://user-images.githubusercontent.com/6073852/71770711-91434380-2f38-11ea-95c8-3f0378308216.png)


Configure
-------------


`$ bundle install`

`$ yarn install`

`$ rake db:create`

`$ rake db:migrate`

Start server 

`$ foreman start`

You can deploy via Nginx with follow config:
```
upstream puma {
  server 127.0.0.1:3000;
}
server {
  listen 80;
  listen [::]:80;
  server_name yourdomain.local;
  try_files $uri/index.html $uri @puma;
  location / {
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header Host $http_host;
    proxy_redirect off;
    proxy_pass http://puma$request_uri;
  }
  root .../railspath/public;
  location ^~ /assets/ {
    gzip_static on;
    expires max;
    add_header Cache-Control public;
  }
  location ^~ /system/ {
    gzip_static on;
    expires max;
    add_header Cache-Control public;
  }
  error_page 500 502 503 504 /500.html;
  error_page 404 /404.html;
  error_page 422 /422.html;
  client_max_body_size 10M;
  keepalive_timeout 10;
}
```

If get `Uncaught ReferenceError: I18n is not defined` just add this line: `import I18n from './i18n'` in your ../public/javascripts/translations.js file



Pull requests are welcome
