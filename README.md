# python_blog
Docker con Python 

Python usado en articulos del blog: josecarpio.com

Uso
-----

Los podemos descargar y usar con los siguientes comandos:

    docker pull josecarpio/python_blog
    docker run -i -t josecarpio/python_blog /bin/bash
    
Si deseamos lanzar Jupyter:

    docker run -i -t  -p 9998:8888  --name python_blog -v //c/blog:/blog -w /blog  josecarpio/python_blog /bin/bash -c "/opt/conda/bin/conda     install jupyter -y --quiet && /opt/conda/bin/jupyter notebook --notebook-dir=/blog --ip='*' --port=8888 --no-browser"
    
Notas:

-p 9998:8888 , 9998 es el puerto local para el navegador, cambialo por el que desees.

Cambia “//c/blog“ por una dirección donde desees guardar los archivos y carpetas de trabajo.


