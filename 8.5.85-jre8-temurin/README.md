# NOTAS

1. Para generar los certificados

    ```
    keytool -genkey -alias tomcat -keyalg RSA -keystore tomcat.keystore

    keytool -certreq -keyalg RSA -alias tomcat -file tomcat.csr -keystore tomcat.keystore
    ```

    clave Tomcat-2023
