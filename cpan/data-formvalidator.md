# Data::FormValidator Constraints and Constraint Methods

One of the pitfall I often fall in with Data::FormValidator is the difference between constraints and constraint_methods.

Normally constraints are specified as follows:

```perl
my $profile = {
    optional => [qw()],
    required => [qw()],
    constraints => {
        field => \&my_constraint,
    }
};
```

To use constraint methods you need to add the constraints module (see below).

```perl
use Data::FormValidator::Constraints qw(:closures);

my $profile = {
    optional => [qw()],
    required => [qw()],
    constraint_methods => {
        my_constraint => my_constraint(),
    }
};
```

The difference between the two is simply that the first one get the value as first parameter, where the second gets a Data::FormValidator::Results object and additional steps have to be made in order to do the actual validation.