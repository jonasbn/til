# Install a new perl and clone modules from an existing installation

```bash
$ perlbrew clone-modules perl-5.28.1 perl-5.30.0
$ perlbrew switch perl-5.30.0
```

Do note I experienced some _weirdness_ resembling this:

```
Installing 0 modules from v28@op2 to v28@op ...
! Finding Perl on cpanmetadb failed.
--> Working on Perl
Fetching http://cpan.metacpan.org/authors/id/G/GS/GSAR/PerlInterp-0.02.tar.gz ... OK
Configuring PerlInterp-0.02 ... OK
Building and testing PerlInterp-0.02 ... FAIL
```

Ref: [perlbrew issue #637](https://github.com/gugod/App-perlbrew/issues/637)

Updating `perlbrew` to version 0.86 fixed the problem. Check your `perlbrew` version like this:

```bash
$ perlbrew --version
/Users/jonasbn/perl5/perlbrew/bin/perlbrew  - App::perlbrew/0.86
```

Unfortunately I have observed the issue again with 0.92

I evaluated the `/home/jonasbn/.cpanm/build.log` without any luck. Unfortunately the source code has been downloaded and can be inspected in: `/home/jonasbn/.cpanm/latest--build`, where you can find: `PerlInterp-0.02`.

So I attempted a build by hand in `.cpanm/latest-build/PerlInterp-0.02`:

```bash
$ perl Makefile.PL
Checking if your kit is complete...
Looks good
Generating a Unix-style Makefile
Writing Makefile for Perl
Writing MYMETA.yml and MYMETA.json
```

```bash
$ make
cp Perl.pm blib/lib/Perl.pm
Running Mkbootstrap for Perl ()
chmod 644 "Perl.bs"
"/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/bin/perl" -MExtUtils::Command::MM -e 'cp_nonempty' -- Perl.bs blib/arch/auto/Perl/Perl.bs 644
"/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/bin/perl" "/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/ExtUtils/xsubpp"  -typemap '/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/ExtUtils/typemap' -typemap '/home/jonasbn/.cpanm/work/1623414858.10787/PerlInterp-0.02/typemap'  Perl.xs > Perl.xsc
mv Perl.xsc Perl.c
cc -c   -fwrapv -fno-strict-aliasing -pipe -fstack-protector-strong -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -O2   -DVERSION=\"0.02\" -DXS_VERSION=\"0.02\" -fPIC "-I/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE"   Perl.c
In file included from /home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/perl.h:5744,
                 from Perl.xs:8:
Perl.xs: In function ‘xs_init’:
Perl.xs:20:42: warning: passing argument 3 of ‘Perl_newXS’ from incompatible pointer type [-Wincompatible-pointer-types]
   20 |     newXS("DynaLoader::boot_DynaLoader", boot_DynaLoader, __FILE__);
      |                                          ^~~~~~~~~~~~~~~
      |                                          |
      |                                          void (*)(CV *) {aka void (*)(struct cv *)}
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:400:42: note: in definition of macro ‘newXS’
  400 | #define newXS(a,b,c)  Perl_newXS(aTHX_ a,b,c)
      |                                          ^
In file included from /home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/perl.h:5705,
                 from Perl.xs:8:
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/proto.h:2513:19: note: expected ‘XSUBADDR_t’ {aka ‘void (*)(struct interpreter *, struct cv *)’} but argument is of type ‘void (*)(CV *)’ {aka ‘void (*)(struct cv *)’}
 2513 | PERL_CALLCONV CV* Perl_newXS(pTHX_ const char *name, XSUBADDR_t subaddr, const char *filename);
      |                   ^~~~~~~~~~
Perl.xs: At top level:
Perl.xs:33:27: error: ‘PL_tokenbuf’ undeclared here (not in a function)
   33 |     char ptokenbuf[sizeof(PL_tokenbuf)];
      |                           ^~~~~~~~~~~
Perl.xs:34:29: error: ‘PL_nextval’ undeclared here (not in a function)
   34 |     YYSTYPE pnextval[sizeof(PL_nextval)];
      |                             ^~~~~~~~~~
Perl.xs:35:26: error: ‘PL_nexttype’ undeclared here (not in a function); did you mean ‘PL_laststype’?
   35 |     I32 pnexttype[sizeof(PL_nexttype)];
      |                          ^~~~~~~~~~~
      |                          PL_laststype
In file included from /home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/perl.h:5744,
                 from Perl.xs:8:
Perl.xs: In function ‘save_globals’:
Perl.xs:52:13: error: ‘PL_uid’ undeclared (first use in this function); did you mean ‘si_uid’?
   52 |     SAVEINT(PL_uid);
      |             ^~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:519:42: note: in definition of macro ‘save_int’
  519 | #define save_int(a)  Perl_save_int(aTHX_ a)
      |                                          ^
Perl.xs:52:5: note: in expansion of macro ‘SAVEINT’
   52 |     SAVEINT(PL_uid);
      |     ^~~~~~~
Perl.xs:52:13: note: each undeclared identifier is reported only once for each function it appears in
   52 |     SAVEINT(PL_uid);
      |             ^~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:519:42: note: in definition of macro ‘save_int’
  519 | #define save_int(a)  Perl_save_int(aTHX_ a)
      |                                          ^
Perl.xs:52:5: note: in expansion of macro ‘SAVEINT’
   52 |     SAVEINT(PL_uid);
      |     ^~~~~~~
Perl.xs:53:13: error: ‘PL_euid’ undeclared (first use in this function)
   53 |     SAVEINT(PL_euid);
      |             ^~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:519:42: note: in definition of macro ‘save_int’
  519 | #define save_int(a)  Perl_save_int(aTHX_ a)
      |                                          ^
Perl.xs:53:5: note: in expansion of macro ‘SAVEINT’
   53 |     SAVEINT(PL_euid);
      |     ^~~~~~~
Perl.xs:54:13: error: ‘PL_gid’ undeclared (first use in this function); did you mean ‘PL_Dir’?
   54 |     SAVEINT(PL_gid);
      |             ^~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:519:42: note: in definition of macro ‘save_int’
  519 | #define save_int(a)  Perl_save_int(aTHX_ a)
      |                                          ^
Perl.xs:54:5: note: in expansion of macro ‘SAVEINT’
   54 |     SAVEINT(PL_gid);
      |     ^~~~~~~
Perl.xs:55:13: error: ‘PL_egid’ undeclared (first use in this function)
   55 |     SAVEINT(PL_egid);
      |             ^~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:519:42: note: in definition of macro ‘save_int’
  519 | #define save_int(a)  Perl_save_int(aTHX_ a)
      |                                          ^
Perl.xs:55:5: note: in expansion of macro ‘SAVEINT’
   55 |     SAVEINT(PL_egid);
      |     ^~~~~~~
Perl.xs:59:13: error: ‘PL_op_seqmax’ undeclared (first use in this function); did you mean ‘PL_cop_seqmax’?
   59 |     SAVEI16(PL_op_seqmax);
      |             ^~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:498:42: note: in definition of macro ‘save_I16’
  498 | #define save_I16(a)  Perl_save_I16(aTHX_ a)
      |                                          ^
Perl.xs:59:5: note: in expansion of macro ‘SAVEI16’
   59 |     SAVEI16(PL_op_seqmax);
      |     ^~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/scope.h:230:35: error: lvalue required as unary ‘&’ operand
  230 | #define SAVEINT(i) save_int((int*)&(i))
      |                                   ^
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:519:42: note: in definition of macro ‘save_int’
  519 | #define save_int(a)  Perl_save_int(aTHX_ a)
      |                                          ^
Perl.xs:63:5: note: in expansion of macro ‘SAVEINT’
   63 |     SAVEINT(PL_maxo);
      |     ^~~~~~~
Perl.xs:64:13: error: lvalue required as left operand of assignment
   64 |     PL_maxo = MAXO;
      |             ^
In file included from /home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/perl.h:5744,
                 from Perl.xs:8:
Perl.xs:69:13: error: ‘PL_lex_state’ undeclared (first use in this function); did you mean ‘PL_hash_state’?
   69 |     SAVEI32(PL_lex_state);
      |             ^~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:69:5: note: in expansion of macro ‘SAVEI32’
   69 |     SAVEI32(PL_lex_state);
      |     ^~~~~~~
Perl.xs:70:13: error: ‘PL_lex_defer’ undeclared (first use in this function)
   70 |     SAVEI32(PL_lex_defer);
      |             ^~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:70:5: note: in expansion of macro ‘SAVEI32’
   70 |     SAVEI32(PL_lex_defer);
      |     ^~~~~~~
Perl.xs:71:13: error: ‘PL_lex_expect’ undeclared (first use in this function)
   71 |     SAVEINT(PL_lex_expect);
      |             ^~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:519:42: note: in definition of macro ‘save_int’
  519 | #define save_int(a)  Perl_save_int(aTHX_ a)
      |                                          ^
Perl.xs:71:5: note: in expansion of macro ‘SAVEINT’
   71 |     SAVEINT(PL_lex_expect);
      |     ^~~~~~~
Perl.xs:72:13: error: ‘PL_lex_brackets’ undeclared (first use in this function)
   72 |     SAVEI32(PL_lex_brackets);
      |             ^~~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:72:5: note: in expansion of macro ‘SAVEI32’
   72 |     SAVEI32(PL_lex_brackets);
      |     ^~~~~~~
Perl.xs:73:13: error: ‘PL_lex_formbrack’ undeclared (first use in this function)
   73 |     SAVEI32(PL_lex_formbrack);
      |             ^~~~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:73:5: note: in expansion of macro ‘SAVEI32’
   73 |     SAVEI32(PL_lex_formbrack);
      |     ^~~~~~~
Perl.xs:74:13: error: ‘PL_lex_fakebrack’ undeclared (first use in this function)
   74 |     SAVEI32(PL_lex_fakebrack);
      |             ^~~~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:74:5: note: in expansion of macro ‘SAVEI32’
   74 |     SAVEI32(PL_lex_fakebrack);
      |     ^~~~~~~
Perl.xs:75:13: error: ‘PL_lex_casemods’ undeclared (first use in this function)
   75 |     SAVEI32(PL_lex_casemods);
      |             ^~~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:75:5: note: in expansion of macro ‘SAVEI32’
   75 |     SAVEI32(PL_lex_casemods);
      |     ^~~~~~~
Perl.xs:76:13: error: ‘PL_lex_dojoin’ undeclared (first use in this function)
   76 |     SAVEI32(PL_lex_dojoin);
      |             ^~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:76:5: note: in expansion of macro ‘SAVEI32’
   76 |     SAVEI32(PL_lex_dojoin);
      |     ^~~~~~~
Perl.xs:77:13: error: ‘PL_lex_starts’ undeclared (first use in this function); did you mean ‘Perl_lex_start’?
   77 |     SAVEI32(PL_lex_starts);
      |             ^~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:77:5: note: in expansion of macro ‘SAVEI32’
   77 |     SAVEI32(PL_lex_starts);
      |     ^~~~~~~
Perl.xs:82:14: error: ‘PL_lex_op’ undeclared (first use in this function)
   82 |     SAVESPTR(PL_lex_op);
      |              ^~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:540:44: note: in definition of macro ‘save_sptr’
  540 | #define save_sptr(a)  Perl_save_sptr(aTHX_ a)
      |                                            ^
Perl.xs:82:5: note: in expansion of macro ‘SAVESPTR’
   82 |     SAVESPTR(PL_lex_op);
      |     ^~~~~~~~
Perl.xs:83:14: error: ‘PL_lex_inpat’ undeclared (first use in this function)
   83 |     SAVESPTR(PL_lex_inpat);
      |              ^~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:540:44: note: in definition of macro ‘save_sptr’
  540 | #define save_sptr(a)  Perl_save_sptr(aTHX_ a)
      |                                            ^
Perl.xs:83:5: note: in expansion of macro ‘SAVESPTR’
   83 |     SAVESPTR(PL_lex_inpat);
      |     ^~~~~~~~
Perl.xs:84:13: error: ‘PL_lex_inwhat’ undeclared (first use in this function)
   84 |     SAVEI32(PL_lex_inwhat);
      |             ^~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:84:5: note: in expansion of macro ‘SAVEI32’
   84 |     SAVEI32(PL_lex_inwhat);
      |     ^~~~~~~
Perl.xs:85:14: error: ‘PL_lex_brackstack’ undeclared (first use in this function)
   85 |     SAVEPPTR(PL_lex_brackstack);
      |              ^~~~~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:532:44: note: in definition of macro ‘save_pptr’
  532 | #define save_pptr(a)  Perl_save_pptr(aTHX_ a)
      |                                            ^
Perl.xs:85:5: note: in expansion of macro ‘SAVEPPTR’
   85 |     SAVEPPTR(PL_lex_brackstack);
      |     ^~~~~~~~
Perl.xs:86:14: error: ‘PL_lex_casestack’ undeclared (first use in this function); did you mean ‘PL_savestack’?
   86 |     SAVEPPTR(PL_lex_casestack);
      |              ^~~~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:532:44: note: in definition of macro ‘save_pptr’
  532 | #define save_pptr(a)  Perl_save_pptr(aTHX_ a)
      |                                            ^
Perl.xs:86:5: note: in expansion of macro ‘SAVEPPTR’
   86 |     SAVEPPTR(PL_lex_casestack);
      |     ^~~~~~~~
Perl.xs:87:13: error: ‘PL_nexttoke’ undeclared (first use in this function)
   87 |     SAVEI32(PL_nexttoke);
      |             ^~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:87:5: note: in expansion of macro ‘SAVEI32’
   87 |     SAVEI32(PL_nexttoke);
      |     ^~~~~~~
Perl.xs:88:14: error: ‘PL_linestr’ undeclared (first use in this function)
   88 |     SAVESPTR(PL_linestr);
      |              ^~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:540:44: note: in definition of macro ‘save_sptr’
  540 | #define save_sptr(a)  Perl_save_sptr(aTHX_ a)
      |                                            ^
Perl.xs:88:5: note: in expansion of macro ‘SAVESPTR’
   88 |     SAVESPTR(PL_linestr);
      |     ^~~~~~~~
Perl.xs:89:14: error: ‘PL_bufptr’ undeclared (first use in this function)
   89 |     SAVEPPTR(PL_bufptr);
      |              ^~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:532:44: note: in definition of macro ‘save_pptr’
  532 | #define save_pptr(a)  Perl_save_pptr(aTHX_ a)
      |                                            ^
Perl.xs:89:5: note: in expansion of macro ‘SAVEPPTR’
   89 |     SAVEPPTR(PL_bufptr);
      |     ^~~~~~~~
Perl.xs:90:14: error: ‘PL_oldbufptr’ undeclared (first use in this function)
   90 |     SAVEPPTR(PL_oldbufptr);
      |              ^~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:532:44: note: in definition of macro ‘save_pptr’
  532 | #define save_pptr(a)  Perl_save_pptr(aTHX_ a)
      |                                            ^
Perl.xs:90:5: note: in expansion of macro ‘SAVEPPTR’
   90 |     SAVEPPTR(PL_oldbufptr);
      |     ^~~~~~~~
Perl.xs:91:14: error: ‘PL_oldoldbufptr’ undeclared (first use in this function)
   91 |     SAVEPPTR(PL_oldoldbufptr);
      |              ^~~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:532:44: note: in definition of macro ‘save_pptr’
  532 | #define save_pptr(a)  Perl_save_pptr(aTHX_ a)
      |                                            ^
Perl.xs:91:5: note: in expansion of macro ‘SAVEPPTR’
   91 |     SAVEPPTR(PL_oldoldbufptr);
      |     ^~~~~~~~
Perl.xs:92:14: error: ‘PL_bufend’ undeclared (first use in this function)
   92 |     SAVEPPTR(PL_bufend);
      |              ^~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:532:44: note: in definition of macro ‘save_pptr’
  532 | #define save_pptr(a)  Perl_save_pptr(aTHX_ a)
      |                                            ^
Perl.xs:92:5: note: in expansion of macro ‘SAVEPPTR’
   92 |     SAVEPPTR(PL_bufend);
      |     ^~~~~~~~
Perl.xs:93:13: error: ‘PL_expect’ undeclared (first use in this function)
   93 |     SAVEINT(PL_expect);
      |             ^~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:519:42: note: in definition of macro ‘save_int’
  519 | #define save_int(a)  Perl_save_int(aTHX_ a)
      |                                          ^
Perl.xs:93:5: note: in expansion of macro ‘SAVEINT’
   93 |     SAVEINT(PL_expect);
      |     ^~~~~~~
Perl.xs:94:13: error: ‘PL_multi_start’ undeclared (first use in this function); did you mean ‘PL_main_start’?
   94 |     SAVEI32(PL_multi_start);
      |             ^~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:94:5: note: in expansion of macro ‘SAVEI32’
   94 |     SAVEI32(PL_multi_start);
      |     ^~~~~~~
Perl.xs:95:13: error: ‘PL_multi_end’ undeclared (first use in this function)
   95 |     SAVEI32(PL_multi_end);
      |             ^~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:95:5: note: in expansion of macro ‘SAVEI32’
   95 |     SAVEI32(PL_multi_end);
      |     ^~~~~~~
Perl.xs:96:13: error: ‘PL_multi_open’ undeclared (first use in this function)
   96 |     SAVEI32(PL_multi_open);
      |             ^~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:96:5: note: in expansion of macro ‘SAVEI32’
   96 |     SAVEI32(PL_multi_open);
      |     ^~~~~~~
Perl.xs:97:13: error: ‘PL_multi_close’ undeclared (first use in this function)
   97 |     SAVEI32(PL_multi_close);
      |             ^~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:97:5: note: in expansion of macro ‘SAVEI32’
   97 |     SAVEI32(PL_multi_close);
      |     ^~~~~~~
Perl.xs:98:13: error: ‘PL_error_count’ undeclared (first use in this function); did you mean ‘PL_sv_count’?
   98 |     SAVEI32(PL_error_count);
      |             ^~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:98:5: note: in expansion of macro ‘SAVEI32’
   98 |     SAVEI32(PL_error_count);
      |     ^~~~~~~
Perl.xs:107:13: error: ‘PL_thisexpr’ undeclared (first use in this function)
  107 |     SAVEI32(PL_thisexpr);
      |             ^~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:499:42: note: in definition of macro ‘save_I32’
  499 | #define save_I32(a)  Perl_save_I32(aTHX_ a)
      |                                          ^
Perl.xs:107:5: note: in expansion of macro ‘SAVEI32’
  107 |     SAVEI32(PL_thisexpr);
      |     ^~~~~~~
Perl.xs:108:14: error: ‘PL_last_uni’ undeclared (first use in this function); did you mean ‘PL_lastfd’?
  108 |     SAVEPPTR(PL_last_uni);
      |              ^~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:532:44: note: in definition of macro ‘save_pptr’
  532 | #define save_pptr(a)  Perl_save_pptr(aTHX_ a)
      |                                            ^
Perl.xs:108:5: note: in expansion of macro ‘SAVEPPTR’
  108 |     SAVEPPTR(PL_last_uni);
      |     ^~~~~~~~
Perl.xs:109:14: error: ‘PL_last_lop’ undeclared (first use in this function); did you mean ‘PL_lastfd’?
  109 |     SAVEPPTR(PL_last_lop);
      |              ^~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:532:44: note: in definition of macro ‘save_pptr’
  532 | #define save_pptr(a)  Perl_save_pptr(aTHX_ a)
      |                                            ^
Perl.xs:109:5: note: in expansion of macro ‘SAVEPPTR’
  109 |     SAVEPPTR(PL_last_lop);
      |     ^~~~~~~~
Perl.xs:110:13: error: ‘PL_last_lop_op’ undeclared (first use in this function)
  110 |     SAVEI16(PL_last_lop_op);
      |             ^~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:498:42: note: in definition of macro ‘save_I16’
  498 | #define save_I16(a)  Perl_save_I16(aTHX_ a)
      |                                          ^
Perl.xs:110:5: note: in expansion of macro ‘SAVEI16’
  110 |     SAVEI16(PL_last_lop_op);
      |     ^~~~~~~
Perl.xs:111:13: error: ‘PL_in_my’ undeclared (first use in this function); did you mean ‘PL_inf’?
  111 |     SAVEI16(PL_in_my);
      |             ^~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:498:42: note: in definition of macro ‘save_I16’
  498 | #define save_I16(a)  Perl_save_I16(aTHX_ a)
      |                                          ^
Perl.xs:111:5: note: in expansion of macro ‘SAVEI16’
  111 |     SAVEI16(PL_in_my);
      |     ^~~~~~~
Perl.xs:112:14: error: ‘PL_in_my_stash’ undeclared (first use in this function)
  112 |     SAVESPTR(PL_in_my_stash);
      |              ^~~~~~~~~~~~~~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/embed.h:540:44: note: in definition of macro ‘save_sptr’
  540 | #define save_sptr(a)  Perl_save_sptr(aTHX_ a)
      |                                            ^
Perl.xs:112:5: note: in expansion of macro ‘SAVESPTR’
  112 |     SAVESPTR(PL_in_my_stash);
      |     ^~~~~~~~
Perl.xs: In function ‘XS_Perl_new’:
Perl.xs:179:28: warning: passing argument 2 of ‘perl_parse’ from incompatible pointer type [-Wincompatible-pointer-types]
  179 |  if (perl_parse(RETVAL->i, xs_init, ac, av, environ)) {
      |                            ^~~~~~~
      |                            |
      |                            void (*)(void)
In file included from /home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/perl.h:5705,
                 from Perl.xs:8:
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/proto.h:2743:65: note: expected ‘XSINIT_t’ {aka ‘void (*)(struct interpreter *)’} but argument is of type ‘void (*)(void)’
 2743 | PERL_CALLCONV int perl_parse(PerlInterpreter *my_perl, XSINIT_t xsinit, int argc, char** argv, char** env);
      |                                                        ~~~~~~~~~^~~~~~
In file included from /home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/perl.h:4076,
                 from Perl.xs:8:
Perl.xs: In function ‘XS_Perl_eval’:
Perl.xs:225:51: error: ‘na’ undeclared (first use in this function); did you mean ‘nan’?
  225 |      warn ("Perl->eval failed: %s\n", SvPV(ERRSV, na)) ;
      |                                                   ^~
/home/jonasbn/perl5/perlbrew/perls/perl-5.34.0/lib/5.34.0/x86_64-linux-multi/CORE/sv.h:1849:10: note: in definition of macro ‘SvPV_flags’
 1849 |      ? ((len = SvCUR(sv)), SvPVX(sv)) : sv_2pv_flags(sv, &len, flags))
      |          ^~~
Perl.xs:225:39: note: in expansion of macro ‘SvPV’
  225 |      warn ("Perl->eval failed: %s\n", SvPV(ERRSV, na)) ;
      |                                       ^~~~
make: *** [Makefile:330: Perl.o] Error 1
```

Fortunately the [Perl FAQ][perlfaq] proposes a solution, so we can rely on `cpan`, `perl` and `cpanm`

```bash
cpan -l | perl -p -e 's/^([\w:]+)\W+.*/$1/' | xargs cpanm
```

## Resources and References

1. [Twitter: @chromatic](https://twitter.com/chromatic_x/status/1131285517511692288)
1. [MetaCPAN: perlbrew documentation](https://metacpan.org/pod/distribution/App-perlbrew/script/perlbrew#COMMAND:-CLONE-MODULES)
1. [Perlfaq 3: "How do I find which modules are installed on my system?"][perlfaq]

[perlfaq]: https://perldoc.perl.org/perlfaq3#How-do-I-find-which-modules-are-installed-on-my-system%3f
