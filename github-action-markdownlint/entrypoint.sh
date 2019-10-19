#!/bin/sh -l

echo ""
echo "Using Markdownlint on all Markdown files"
echo "-----------------------------"

markdownlint *.md && markdownlint */*.md
