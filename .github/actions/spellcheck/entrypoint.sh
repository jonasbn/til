#!/bin/sh -l

echo ""
echo "Using pyspelling on repository files outlined in spellcheck.yaml"
echo "----------------------------------------------------------------"

pyspelling -c spellcheck.yaml

EXITCODE=$?

test $EXITCODE -eq 0 || echo "($EXITCODE) Repository contains spelling errors or spelling check failed, please check diagnostics";
exit $EXITCODE
