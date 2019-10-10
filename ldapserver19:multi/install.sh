#! /bin/bash
# Install ldap server

rm -rf /etc/openldap/slapd.d/*
rm -rf /var/lib/ldap/*
mkdir /var/lib/ldap.edt.org
mkdir /var/lib/ldap.m06.cat
cp /opt/docker/DB_CONFIG /var/lib/ldap.edt.org/
cp /opt/docker/DB_CONFIG /var/lib/ldap.m06.cat/
cp /opt/docker/DB_CONFIG /var/lib/ldap/.
slaptest -f /opt/docker/slapd.conf -F /etc/openldap/slapd.d
slapadd -F /etc/openldap/slapd.d -l /opt/docker/edt.org.ldif
slapadd -b 'dc=m06,dc=cat' -F /etc/openldap/slapd.d -l /opt/docker/m06.cat.ldif 
chown -R ldap.ldap /etc/openldap/slapd.d
chown -R ldap.ldap /var/lib/ldap
chown -R ldap.ldap /var/lib/ldap.edt.org
chown -R ldap.ldap /var/lib/ldap.m06.cat
cp /opt/docker/ldap.conf /etc/openldap/.



