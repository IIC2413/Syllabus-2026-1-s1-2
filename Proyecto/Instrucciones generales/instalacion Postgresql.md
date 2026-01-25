# Tutorial de instalación de PostgreSQL en Mac y Windows

## Instalación Postgresql App en Mac 
https://postgresapp.com/

## Instalación en Mac usando Brew

1. Abre la terminal en tu Mac.

2. Instala Homebrew si aún no lo tienes. Homebrew es un gestor de paquetes para macOS. Ejecuta el siguiente comando en la terminal:

    ```shell
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

3. Una vez que Homebrew esté instalado, ejecuta el siguiente comando para instalar PostgreSQL:

    ```shell
    brew install postgresql
    ```

4. Después de la instalación, inicia el servicio de PostgreSQL ejecutando el siguiente comando:

    ```shell
    brew services start postgresql
    ```

5. ¡Listo! PostgreSQL está instalado en tu Mac. Puedes verificar la instalación ejecutando el siguiente comando:

    ```shell
    psql --version
    ```

## Instalación en Windows

1. Abre el símbolo del sistema (Command Prompt) en tu Windows.

2. Descarga el instalador de PostgreSQL desde el sitio web oficial de PostgreSQL: [https://www.postgresql.org/download/windows/](https://www.postgresql.org/download/windows/)

3. Ejecuta el instalador descargado y sigue las instrucciones del asistente de instalación.

4. Durante la instalación, se te pedirá que elijas una contraseña para el usuario "postgres". Asegúrate de recordar esta contraseña, ya que la necesitarás más adelante.

5. Una vez que la instalación esté completa, PostgreSQL estará listo para usar en tu Windows.

6. Para verificar la instalación, abre el símbolo del sistema y ejecuta el siguiente comando:

    ```shell
    psql --version

    ```

## Video Complementario

https://youtu.be/gVExAzegHds
