.PHONY: stats spelling monitor markdown
monitor:
	ls **/*.md | entr ./check_til.pl

markdown:
	markdownlint .

spelling:
	spellchecker.sh

stats:
	./check_til.pl