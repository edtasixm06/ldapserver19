# ldapserver19:entrypoint
## ASIX M06-ASO @edt Curs 2019-2020

servidor ildapserver amb base de dades d'usuaris per UID
i amb grups posix ben configurats.

Configuarat per usar l'script startup com a entrypoint.

```
$ docker run --rm --name ldap.edt.org --hostname ldap.edt.org -it edtasixm06/ldapserver19:entrypoint initdbedt
$ docker run --rm --name ldap.edt.org --hostname ldap.edt.org -e DEBUG=1 -it edtasixm06/ldapserver19:entrypoint initdbedt
docker run --rm --name ldap.edt.org --hostname ldap.edt.org -e DEBUG=1 -v ldap-data:/var/lib/ldap -v ldap-config:/etc/openldap/slapd.d -it edtasixm06/ldapserver19:entrypoint initdbedt

```

Exemple execució:
```
docker run --rm --name ldap.edt.org --hostname ldap.edt.org -e DEBUG=1 -v ldap-data:/var/lib/ldap -v ldap-config:/etc/openldap/slapd.d -it edtasixm06/ldapserver19:entrypoint initdbedt

1
inicialitzant...
$0: /opt/docker/startup.sh
$1: initdbedt
initConf
initdbedt
5e5ea785 mdb_db_open: database "dc=edt,dc=org" cannot be opened: No such file or directory (2). Restore from backup!
5e5ea785 backend_startup_one (type=mdb, suffix="dc=edt,dc=org"): bi_db_open failed! (2)
slap_startup failed (test would succeed using the -u switch)
_#################### 100.00% eta   none elapsed            none fast!         
Closing DB...
slapd starting...

```

```
ldapdelete -x -D 'cn=Manager,dc=edt,dc=org' -w secret uid=user10,ou=usuaris,dc=edt,dc=org
ldapdelete -x -D 'cn=Manager,dc=edt,dc=org' -w secret uid=paco,o=noneu,o=europa,ou=clients,dc=edt,dc=org
```





