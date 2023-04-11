# NOTAS



1. Para generar los certificados
    ```
    $ openssl req -x509 -newkey rsa:4096 -keyout tomcat-rsa-key.pem -out tomcat-rsa-cert.pem -days 36500
    ```
    clave Tomcat-2023