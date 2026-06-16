# Databases

These are some thoughts, which have been on my mind for several years, this is just a dump of my thoughts, since I was in the process of documenting some database development related topics for my colleagues.

It is by no means complete, it ignores a lot of details, it aims to be a high-level overview of the various elements of a database and how they relate to each other from an application implementation perspective, meaning they do not take into consideration all sorts of database systems and implementations, it is primarily focused on RDBMS and the challenges with these. It does not go into details on operations, scaling, performance or resilience - and finally it is by no means an authoritative source, it is just a dump of my thoughts.

## Introduction

To talk about and work with databases, we need a vocabulary and a systematic approach.

Databases can be regarded in varies perspectives, which make sense in the context they are used. The hierarchy for the varies database elements are as follows:

- Database host
- Database engine/application
- Database
- Schema
- Data

This is a very high-level approach to a categorisation of the varies elements and levels on which we can talk about a database. And perhaps the levels is a good division of the various listed elements.

- Level 0: Database host
- Level 1: Database engine/application
- Level 2: Database
- Level 3: Schema
- Level 4: Data

Some of the levels contain, what could be regarded as sub-levels and some levels are overlapping, but from a high level perspective, this separation can make some sense.

Now lets go over the various levels one by one.

## Level 0

This is the network level. A machine or host have to exist in order to host a database and to provide some kind of access, whether this is via network or on the local host.

If we look at various programming languages approach to accessing database, we can see that expressed in the connection part.

This is an example based on PDO, the database access library for PHP:

```php
$conn = new PDO("mysql:host=$hostname;dbname=myDB", $username, $password);
```

The interesting part in when talking level 0 and why it makes sense to talk about the levels is expressed in  the: host=$hostname

If if the database connections does not now what host to connect to, even if this is localhost it cannot make a connection.

## Level 1

This level is our database engine/application or program. If we again look at the connection string, the necessary elements are also listed:

```php
$conn = new PDO("mysql:host=$hostname;dbname=myDB", $username, $password);
```

When talking about level one, the part of the string that is interesting here is: `"mysql:` this tells the library that we want to connect to a MySQL database, not MongoDB, Postgres or Oracle.

In PDO context this is important of if you where using Perl’s DBI (Database Interface). Since these are general frameworks for accessing databases, which then rely on separate drivers for the various engines.

An example for Perl’s DBI, would look as follows:

```perl
$dbh = DBI->connect($data_source, $username, $auth);
```

Very similar to the one of PDO. If a library for accessing MySQL, which would be MySQL-only could be PHP’s mysqli. Here a connection string could look at follows:

```php
$conn = mysqli_connect($servername, $username, $password);
```

As you can see the engine (driver) is left out since it is implicit.

The string used by PDO and DBI can be referred to as the data source or DSN. In DBI it can take various forms:

```text
dbi:DriverName:database_name
dbi:DriverName:database_name@hostname:port
dbi:DriverName:database=database_name;host=hostname;port=port
```

Which brings us to another implicit part, the port number. This port number is very often implicit, since the ports used for connects, which belong in level 0 are mostly relying on defaults.

If you consult any the file: /etc/services on a Unix system, you will see a list of the standard ports assigned, not necessarily used, but reserved for a certain application.

MySQL:

```text
mysql       3306/udp    # MySQL
mysql       3306/tcp    # MySQL
```

Postgres:

```text
postgresql      5432/udp    # PostgreSQL Database
postgresql      5432/tcp    # PostgreSQL Database
```

You can get you engine to listen on another port than the standard, hence the need to be able to overwrite or specify something else than the standard port, when making connections.

## Level 2

Now that we have the basic material out of the way, we can get to something more interesting. Often the levels 0 and 1 are a matter of installation and configuration and you are good to go. And following the standards, makes this well well-documented and easy to work with. Level 2 is when we get to what is often more specialized compared to the previous levels.

But we just need to take a step back to level 1. Because there are two essential parts of the connection string, which are very important for this level.

```php
$conn = new PDO("mysql:host=$hostname;dbname=myDB", $username, $password);
```

The `$username` and the `$password` and this is where things start to get tricky.

When you have set up a host (level 0) and installed your database engine (level 1) you will have access to your database engine with a default user and password for some kind of administrator or root user and since this came out of the box, it means that everybody else who has completed level 1 or have just consulted the documentation has the same knowledge as use. They might not know the hostname of your database host, but they do know the necessary credentials to access it.

Do see a resource like: [OWASP Top-10 A05:2021 – Security Misconfiguration](https://owasp.org/Top10/A05_2021-Security_Misconfiguration/) which mentions this as one of the problems and being at position 6, means that it is not uncommon to be open to this exact vulnerability.

This means that we have to take some security into consideration. We need to implement protection on both: level 0 and level 1. We could also just implement security on level 2, by changing the default password. However implementing firewalls and network segmentation my be good and sane measures to get the database out of the public eye, else all it would need a portscan or a connection attempt at the default port to start attempting brute-force attacks for database access.

Now let’s assume we have this in place. We need to set up a database and this is often what we talk about when we talk about databases, even though there are two important levels below and more to come.

Here we create the actual database that we need, for level 2, we just talk about the database as an instance. Not it’s layout or it’s contents, since this level alone, needs to be discussed by itself, because level 2 is fundamental.

Some additional aspects in regards to access to a database, use of the administrative or root user, is not recommended. This user should be locked down for direct use. We could possibly categories our users into 3 categories:

1. Administrator
2. User
3. Application

What we aim for as a primary user is the application. The application will represent our end-users when these access our database via some application. For development and operations, we have some users which are accessing the database directly with 3 purposes:

- Querying the database for understanding data or schemas, or debugging issues in relation our end-users having problems using the application
- Or operating the database in regards to improving, cleaning and maintaining it
- And finally development, meaning introducing new elements or data or even removing obsolete elements, so the application is supported

So at level 2, we need to identify what users we need in order to be able to accomplish the elements in the above list and what privileges we might need in addition.

We do this at level 2, since when the application and database are in use, we do not want the inmates to run the asylum and being able to destroy data or structure, which means we might need to divide this also based on what environment we are talking about, so:

- developers can develop, create structure, refine and add data
- operators, can operate, make backups and apply changes based on proposals from the developers

## Level 3

When we have our database set up for access by our application, we are ready to looking the part which is special for the application.

- We can operate it in production
- We can change it in development
- Our users can access it via the application

Yes, a database could have all users identified as separate users, it would require some work, but you would get the whole access control layer of the database at your disposal, however some commercial databases might be a challenge since they would be billed based on amount of users.

## Level 4
