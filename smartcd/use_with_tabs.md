# Use smartcd with tabs

I am using `smartcd` together with **Liquid Prompt** in Apples **Terminal.app**

This was causing me some grieve, since things would only work when entering a directory, not when opening a new tab.

So I raised an [Github issue](https://github.com/cxreg/smartcd/issues/48) and luckily there was somebody helpful and more knowledgable on the innerworking of `bash` who could help.

In essence load **Liquiud Prompt** prior to `smartcd`

```bash
# liquid prompt
# ref: https://github.com/nojhan/liquidprompt
[[ $- = *i* ]] && source $HOME/develop/github/liquidprompt/liquidprompt

# smartcd
# ref: https://github.com/cxreg/smartcd
[ -r "$HOME/.smartcd_config" ] && ( [ -n $BASH_VERSION ] || [ -n $ZSH_VERSION ] ) && source ~/.smartcd_config
```

