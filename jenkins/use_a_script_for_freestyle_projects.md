# Use a script for _freestyle_ projects

If you are using freestyle projects for Jenkins, you can gain a lot from isolating your implementation of the actual run in a basic shell script.

It holds the following benefits:

1. You can keep it under version control
2. You can generalise it a re-use it for other projects
3. It is easier to test
4. It is easier to maintain

```bash
#!/bin/bash

# Source our bashrc
source ~/perl5/perlbrew/etc/bashrc

# Remove old XML files
rm *.xml

# Install dependencies from cpanfile using Carton
cpanm Carton

# Delete cover report
carton exec cover -delete

# Execute test suite and build, prepared for the Jenkins JUnit plugin
MOJO_MODE=jenkins HARNESS_PERL_SWITCHES=-MDevel::Cover=+ignore,local TEST_POD=1 carton exec prove --timer --formatter=TAP::Formatter::JUnit t > jenkins-${JOB_NAME}-${BUILD_NUMBER}-junit.xml

# Create the coverage report
carton exec cover -silent -no-summary -report html -outputfile index.html

# Create coverage report for Jenkins clover plugin
carton exec cover -silent -no-summary -report clover

# Create Perl::Critic report
carton exec perlcritic --profile t/perlcriticrc --stern bin > perlcritic.txt
```

The above example scripts no particular project dependencies and can be used access Perl projects based on the _freestyle_ project type.
