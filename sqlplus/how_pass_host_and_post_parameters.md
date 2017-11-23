# How to pass host and port parameters

Using the following command one can pass hostname, port, servicename and SID parameters to connect to a database without having an entry in `tnsnames.ora`

```bash
$ sqlplus username/password@hostname:port/SERVICENAME
```

```bash
$ sqlplus username
Enter password: password@//hostname:port/SERVICENAME
```

```bash
$ sqlplus /nolog
SQL> connect username/password@hostname:port/SERVICENAME
``

Source [Blog: Alex Lima](https://oraclespin.com/2008/10/07/how-to-pass-host-port-sidservice-name-to-connect-to-a-database/)
