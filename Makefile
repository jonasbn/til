.PHONY: stats spelling
stats:
	ls **/*.md | entr ./check_til.pl

markdown:
	markdownlint .

spelling:
	spellchecker.sh
