psql -h 127.0.0.1 -p 5432 -d belajar_restore -U rifuki -f $(pwd)/backup.sql

psql --host=127.0.0.1 --port=5432 --dbname=belajar_restore --username=rifuki --file=$(pwd)/backup.sql
