# Output your branches and tags as a tree on the command line

Pretty output in the terminal as found in many of the GUI interfaces

```bash
$ git log --graph --simplify-by-decoration --pretty=format:'%d' --all
```

Example based on [DK Hostmaster EPP Service Specification](https://github.com/DK-Hostmaster/epp-service-specification).

```bash
$ git log --graph --simplify-by-decoration --pretty=format:'%d' --all
*  (HEAD -> master, origin/master, origin/HEAD)
*  (origin/prerelease-2.0, prerelease-2.0)
*
|\
| *  (origin/epp_update_domain_v1, epp_update_domain_v1)
* |
|\ \
| * |  (origin/epp_renew_domain_v1, epp_renew_domain_v1)
| |/
* |
|\ \
| * |  (origin/epp_nameserver_admin_v1, epp_nameserver_admin_v1)
| |/
* |
|\ \
| |/
|/|
| *  (origin/epp_contact_admin_v1, epp_contact_admin_v1)
* |  (tag: 1.10)
|/
*  (tag: 1.9)
*  (tag: 1.8)
*  (tag: 1.7)
*  (tag: 1.6)
*
```

## References

- [CoderWall](https://coderwall.com/p/mjy1lq/git-output-branches-and-tags-as-a-tree)
