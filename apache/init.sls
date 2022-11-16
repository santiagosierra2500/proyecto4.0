install_apache: #Servidor Apache
  pkg.installed:
    - pkgs:
      - httpd

index_html: # archivo html
  file.managed:
    - name: /var/www/html/index.html
    - user: apache
    - group: apache
    - mode : 644 #Permisos de lectura para grupos, usuario permisos de lectura y escritura
    - source: salt://apache/templates/index.html

apache_service:
  service.running:
    - name: httpd
    - enable: True 