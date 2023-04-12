#Se exportan el volumen con los datos de la base de datos
docker run --rm --volumes-from drupalcontainer-postgres-1 -v c:\dbbackup:/backup busybox tar -cvf /backup/backup.tar -C /var/lib/postgresql/data .
#Se exportan ls volumenes con los datos del sitio creado de drupal
docker run --rm --volumes-from drupalcontainer-drupal-1 -v c:\appbackup:/backup busybox tar -cvf /backup/backup.tar -C /var/www/html .
