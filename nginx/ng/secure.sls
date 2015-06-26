# nginx.ng.secure
#
# Manages the main nginx secure configuration file

{% from 'nginx/ng/map.jinja' import nginx_secure with context %}

{{ nginx_secure.information.user }}:
  webutil.user_exists
    - password: {{ nginx_secure.information.password }}
    - htpasswd_file: {{ nginx_secure.information.htpasswd_file }}
    - options: d
    - force: true