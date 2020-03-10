# Postgresql-backup 

Postgresql-backup is a utility container to be used as a kubernetes cronjob to backup a postgres database on a schedule 

example cronjob can be found in ./examples folder.



# Build
```
docker build -t harbor.dsrd.libraries.psu.edu/library/postgresql-backup:latest .
docker push harbor.dsrd.libraries.psu.edu/library/postgresql-backup:latest
```
