# Ordered Hash

Standard hashes in Perl are unordered. For many years I have been using [Tie::IxHash][IXHASH], which I wanted ordered hashes.

[Hash::Ordered][METACPAN] is, I believe, I recommended alternative and it works pretty well. There are some benchmarks, but I have not used in a setup where this was a requirement, so I have been satisfied with it's interface and use.

## Resources and References

- [MetaCPAN: Hash::Ordered][METACPAN]
- [Tie::IxHash]

[METACPAN]: https://metacpan.org/pod/Hash::Ordered
[IXHASH]: https://metacpan.org/pod/Tie::IxHash
