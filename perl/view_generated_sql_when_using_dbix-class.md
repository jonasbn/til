# View generated SQL when using DBIx::Class

This can be quite useful. Ovid [blogged](http://blogs.perl.org/users/ovid/2016/11/seeing-the-sql-in-dbixclass.html#comment-1755573) about doing it by hand, Ribasushi hinted to the _right_ solution.

The below setup is based on the example database from [DBIx::Class](https://metacpan.org/pod/DBIx::Class). In order to get this going you have to install [DBIx::Class::Schema::Loader](https://metacpan.org/search?q=DBIx%3A%3AClass%3A%3ASchema%3A%3ALoader)

```perl
#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

use MyApp::Schema qw();
my $schema = MyApp::Schema->connect('dbi:SQLite:db/example.db');

my $artist_ma = $schema->resultset('Artist')->create({
    name => 'Massive Attack',
});
my $cd_mezz = $artist_ma->create_related(cds => {
    title => 'Mezzanine',
});
for ('Angel', 'Teardrop') {
    $cd_mezz->create_related(tracks => {
        title => $_
    });
}

my $sqlquery = $schema->resultset('Artist')->search(
    {
        name => { like => 'M%' }
    }
)->as_query();

print STDERR Dumper $sqlquery;
```

```bash
$ perl as_query.pl
```

```perl
$VAR1 = \[
            '(SELECT me.artistid, me.name FROM artist me WHERE ( name LIKE ? ))',
            [
              {
                'dbic_colname' => 'name',
                'sqlt_datatype' => 'text'
              },
              'M%'
            ]
          ];
```

---

To setup the database with the above script, you have to follow this guide:

1. `$ cpanm DBIx::Class`
2. `$ cpanm DBIx::Class::Schema::Loader`
3. `$ curl https://fastapi.metacpan.org/source/RIBASUSHI/DBIx-Class-0.082840/examples/Schema/db/example.sql`
3. `$ sqlite db/example.db < example.sql`
4. $ `dbicdump  -o dump_directory=. MyApp::Schema dbi:SQLite:db/example.db`

Since the example script above creates data on the fly, you have to do something along the lines of:

```bash
rm -f db/example.db; sqlite db/example.db < example.sql; perl as_query.pl 
```

[Source: MetaCPAN](https://metacpan.org/pod/DBIx::Class::ResultSet#as_query)
