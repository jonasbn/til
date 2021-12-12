# Providing Suggestions in Reviews

When doing code reviews on GitHub you can provide suggestions in your comments.

Like so:

````
```suggestion
Suggested change
```
````

It is important that the indentation matches, an example:

Original code:

```perl
  # This is an important bit - if you don't do the find the decode
  # will randomly fail/succeed.  This is required to work
  my $asn_node = $asn->find("SubjectAltName")
```

Review comment:

> Please use single-quotes for literals as suggested by
>[Perl::Critic::Policy::ValuesAndExpressions::ProhibitInterpolationOfLiterals](https://metacpan.org/pod/Perl::Critic::Policy::ValuesAndExpressions::ProhibitInterpolationOfLiterals)

````
```suggestion
  my $asn_node = $asn->find('SubjectAltName')
```
````

This will make it easier to apply the suggested change.

## Resources and References

1. [GitHub Docs: "Incorporating feedback in your pull request"](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/incorporating-feedback-in-your-pull-request#applying-a-suggested-change)
