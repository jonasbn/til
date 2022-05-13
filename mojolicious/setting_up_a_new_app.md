# Setting up a new Mojolicious app

Do you want to get of to a good start on your new **Mojolicious** application, follow these steps:

1. Install `carton`
2. Create a `cpanfile`

```perl
requires 'Mojolicious';
```

3. Run `carton`
4. Setup your application as either `app` (application) or `lite_app` (single file application)

```bash
# Mojolicious app, defaults to my_app, specify name accordingly
$ carton exec mojo generate app

# Move local/ cpanfile and cpanfile.snapshot into your application folder, please note the below example is the default name
$ mv local/ cpanfile cpanfile.snapshot my_app/
```

```bash
# Mojolicious lite-app, defaults to myapp.pl, specify name accordingly
$ carton exec mojo generate lite_app
```

And you should be good to go:

```bash
# Mojolicious app
$ cd my_app
$ carton exec morbo script/my_app

# Mojolicious lite-app
$ carton exec morbo my_app
```

Open your browser at:

`http://localhost:3000`

Start coding and remember to add your requirements to the `cpanfile` - have fun!
