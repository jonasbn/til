# Redirecting from one URL to another

Sometimes you are in a situation where you do want to show another URL to the user not, just have several routes to the same controller and action.

This example is based on a *Mojolicious* app, generated using:

```bash
$ mojo generate lite_app
```

The app (`myapp.pl`) look as follows:

```perl
#!/usr/bin/env perl
use Mojolicious::Lite;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => sub {
  my $c = shift;
  $c->redirect_to('/index');
};

get '/index' => sub {
    my $c = shift;
    $c->render(template => 'index');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
<h1>Welcome to the Mojolicious real-time web framework!</h1>
To learn more, you can browse through the documentation
<%= link_to 'here' => '/perldoc' %>.

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
```

This is the nify code:

```perl
get '/' => sub {
  my $c = shift;
  $c->redirect_to('/index');
};
```

It calls a subroutine taking a controller as argumen and controllers have the nifty method `redirect_to`.
