# What is wheel?

I am the current maintainer of the [Spellcheck GitHub Action][spellcheck] a GitHub Action based on `[pyspelling][pyspelling]`. `pyspelling` using LibXML2, via the library `lxml`.

And I am a complete Python _n00b_ - so what could possibly go wrong.

[Dependabot][dependabot], is an automatic tool, which notifies of recommended updates via PRs on GitHub projects. The other day it it provided me with a PR to the Dockerfile for the repository mentioned above to Python 3.9, which is the newest stable release.

I tried pull the PR to my workstation and tried to get it to build and it failed.

```
  Downloading lxml-4.5.1.tar.gz (4.5 MB)
    ERROR: Command errored out with exit status 1:
     command: /usr/local/bin/python -c 'import sys, setuptools, tokenize; sys.argv[0] = '"'"'/tmp/pip-install-3d1f9ag_/lxml/setup.py'"'"'; __file__='"'"'/tmp/pip-install-3d1f9ag_/lxml/setup.py'"'"';f=getattr(tokenize, '"'"'open'"'"', open)(__file__);code=f.read().replace('"'"'\r\n'"'"', '"'"'\n'"'"');f.close();exec(compile(code, __file__, '"'"'exec'"'"'))' egg_info --egg-base /tmp/pip-pip-egg-info-q9dg2dad
         cwd: /tmp/pip-install-3d1f9ag_/lxml/
    Complete output (3 lines):
    Building lxml version 4.5.1.
    Building without Cython.
    Error: Please make sure the libxml2 and libxslt development packages are installed.
    ----------------------------------------
ERROR: Command errored out with exit status 1: python setup.py egg_info Check the logs for full command output.
The command '/bin/sh -c pip3 install -r requirements.txt' returned a non-zero code: 1
```

```
Building wheel for lxml (setup.py): started
Building wheel for lxml (setup.py): finished with status 'error'
ERROR: Command errored out with exit status 1:
command: /usr/local/bin/python -u -c 'import sys, setuptools, tokenize; sys.argv[0] = '"'"'/tmp/pip-install-bk9chagz/lxml/setup.py'"'"'; __file__='"'"'/tmp/pip-install-bk9chagz/lxml/setup.py'"'"';f=getattr(tokenize, '"'"'open'"'"', open)(__file__);code=f.read().replace('"'"'\r\n'"'"', '"'"'\n'"'"');f.close();exec(compile(code, __file__, '"'"'exec'"'"'))' bdist_wheel -d /tmp/pip-wheel-iymlsx1v
    cwd: /tmp/pip-install-bk9chagz/lxml/
Complete output (84 lines):
Building lxml version 4.5.1.
Building without Cython.
Building against libxml2 2.9.4 and libxslt 1.1.32
running bdist_wheel
running build
running build_py
creating build
creating build/lib.linux-x86_64-3.9
creating build/lib.linux-x86_64-3.9/lxml
copying src/lxml/cssselect.py -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/builder.py -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/usedoctest.py -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/doctestcompare.py -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/pyclasslookup.py -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/__init__.py -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/sax.py -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/_elementpath.py -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/ElementInclude.py -> build/lib.linux-x86_64-3.9/lxml
creating build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/__init__.py -> build/lib.linux-x86_64-3.9/lxml/includes
creating build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/builder.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/usedoctest.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/_html5builder.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/formfill.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/diff.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/_setmixin.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/soupparser.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/__init__.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/_diffcommand.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/clean.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/ElementSoup.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/defs.py -> build/lib.linux-x86_64-3.9/lxml/html
copying src/lxml/html/html5parser.py -> build/lib.linux-x86_64-3.9/lxml/html
creating build/lib.linux-x86_64-3.9/lxml/isoschematron
copying src/lxml/isoschematron/__init__.py -> build/lib.linux-x86_64-3.9/lxml/isoschematron
copying src/lxml/etree.h -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/etree_api.h -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/lxml.etree.h -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/lxml.etree_api.h -> build/lib.linux-x86_64-3.9/lxml
copying src/lxml/includes/xmlerror.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/xmlparser.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/uri.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/xpath.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/relaxng.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/c14n.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/htmlparser.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/__init__.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/xinclude.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/tree.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/xmlschema.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/xslt.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/dtdvalid.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/etreepublic.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/config.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/schematron.pxd -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/etree_defs.h -> build/lib.linux-x86_64-3.9/lxml/includes
copying src/lxml/includes/lxml-version.h -> build/lib.linux-x86_64-3.9/lxml/includes
creating build/lib.linux-x86_64-3.9/lxml/isoschematron/resources
creating build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/rng
copying src/lxml/isoschematron/resources/rng/iso-schematron.rng -> build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/rng
creating build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/xsl
copying src/lxml/isoschematron/resources/xsl/XSD2Schtrn.xsl -> build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/xsl
copying src/lxml/isoschematron/resources/xsl/RNG2Schtrn.xsl -> build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/xsl
creating build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/xsl/iso-schematron-xslt1
copying src/lxml/isoschematron/resources/xsl/iso-schematron-xslt1/iso_schematron_message.xsl -> build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/xsl/iso-schematron-xslt1
copying src/lxml/isoschematron/resources/xsl/iso-schematron-xslt1/iso_dsdl_include.xsl -> build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/xsl/iso-schematron-xslt1
copying src/lxml/isoschematron/resources/xsl/iso-schematron-xslt1/iso_schematron_skeleton_for_xslt1.xsl -> build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/xsl/iso-schematron-xslt1
copying src/lxml/isoschematron/resources/xsl/iso-schematron-xslt1/iso_svrl_for_xslt1.xsl -> build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/xsl/iso-schematron-xslt1
copying src/lxml/isoschematron/resources/xsl/iso-schematron-xslt1/iso_abstract_expand.xsl -> build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/xsl/iso-schematron-xslt1
copying src/lxml/isoschematron/resources/xsl/iso-schematron-xslt1/readme.txt -> build/lib.linux-x86_64-3.9/lxml/isoschematron/resources/xsl/iso-schematron-xslt1
running build_ext
building 'lxml.etree' extension
creating build/temp.linux-x86_64-3.9
creating build/temp.linux-x86_64-3.9/src
creating build/temp.linux-x86_64-3.9/src/lxml
gcc -pthread -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O3 -Wall -fPIC -DCYTHON_CLINE_IN_TRACEBACK=0 -I/usr/include/libxml2 -Isrc -Isrc/lxml/includes -I/usr/local/include/python3.9 -c src/lxml/etree.c -o build/temp.linux-x86_64-3.9/src/lxml/etree.o -w
Compile failed: command 'gcc' failed: No such file or directory
creating tmp
cc -I/usr/include/libxml2 -I/usr/include/libxml2 -c /tmp/xmlXPathInit5efyi30_.c -o tmp/xmlXPathInit5efyi30_.o
*********************************************************************************
Could not find function xmlCheckVersion in library libxml2. Is libxml2 installed?
*********************************************************************************
error: command 'gcc' failed: No such file or directory
----------------------------------------
ERROR: Failed building wheel for lxml
```

> ERROR: Failed building wheel for lxml

This led to the question:

> what is a wheel?

I found the answer on StackOverflow

Apparently a wheel is a prebuilt version of the distribution. So if you go to pypi.org and searhc for `lxml` you can under [files][lxmlfiles] find a listing of available wheels.

Luckily my issue was solved by the addition of a wheel to the repository at pypi.org so I did not have to dig into building dependencies based on C libraries in Python.

## Resources and References

- [Dependabot][dependabot]
- [PyPi: lxml][lxml] and [PyPi: lxml files][lxmlfiles]
- [GitHub: pyspelling][pyspelling]
- [StackOverflow: "What is the meaning of “Failed building wheel for X” in pip install?"](https://stackoverflow.com/questions/53204916/what-is-the-meaning-of-failed-building-wheel-for-x-in-pip-install)

[dependabot]: https://dependabot.com/
[pyspelling]: https://github.com/facelessuser/pyspelling
[lxml]: https://pypi.org/project/lxml/#description
[lxmlfiles]: https://pypi.org/project/lxml/#files
[spellcheck]: https://github.com/rojopolis/spellcheck-github-actions
