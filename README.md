# ldapserver19
## ASIX M06-ASO @edt Curs 2019-2020

Repositori de creació de'imatges de servidors ldap

 * **ldapserver19:base**  servidor ldap bàsic.

 * **ldapserver19:multi** servidor amb dues bases de
     dades, dc=edt,dc=org i també dc=m06,dc=cat

 * **ldapserver19:acl** servidor base amb fitxers d'exemple per
     inserir dinàmicament acls diferents i practicar-les.

 * **ldapserver19:schema** servidor ldap que implementa un 
     schema personalitzat. Per cada schema s'han definit dades a
     inserir en la base de dades. S'han fet tres exemples de esquemes
     de 'fulboliestes':
    * A) objecte structural derivat de inetOrgPerson
    * B) objecte structural derivat de tot
    * C) objecte auxiliar (implementat acompanyant els usuaris
         actuals inetOrgPerson i posixAccount)

 * **phpldapadmin** utilitat d'administració web del servei ldap
     permet coonnectar al servidor ldap i via php i apache obre
     el port 80 del container per permetre l'administració

