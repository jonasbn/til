# Mojolicious::Controller respond_to and template parameter

**Mojolicious** is incredibly helpful and invites to fast development. Please note that the `respond_to` method for the `Mojolicious::Controller` class can help you to support several mediatypes easily.

Example lifted from the documentation:

```perl
$c = $c->respond_to(
  json => {json => {message => 'Welcome!'}},
  html => {template => 'welcome'},
  any  => sub {...}
);
```

The `template` parameter for **HTML** however does have to have the complete path, reflecting your structure in your `templates/` directory.

```bash
> tree templates/
templates/
├── example
│   └── welcome.html.ep
└── layouts
    └── default.html.ep
```

Initial example modified accordingly:

```perl
$c = $c->respond_to(
  json => {json => {message => 'Welcome!'}},
  html => {template => 'example/welcome'},
  any  => sub {...}
);
```

## References

- [Mojolicious Docs](http://mojolicious.org/perldoc/Mojolicious/Controller#respond_to)
