# Use smartcd with tabs

I am using `smartcd` together with **Liquid Prompt** in Apples **Terminal.app**

This was causing me some *grief*, since things would only work when entering a directory, not when opening a new tab.

So I raised an [Github issue](https://github.com/cxreg/smartcd/issues/48) and luckily there was somebody helpful and more knowledgable on the innerworkings of `bash` who could help me.

In essence, load **Liquid Prompt** prior to `smartcd`

```bash
# liquid prompt
# ref: https://github.com/nojhan/liquidprompt
[[ $- = *i* ]] && source $HOME/develop/github/liquidprompt/liquidprompt

# smartcd
# ref: https://github.com/cxreg/smartcd
[ -r "$HOME/.smartcd_config" ] && ( [ -n $BASH_VERSION ] || [ -n $ZSH_VERSION ] ) && source ~/.smartcd_config
```

Source: [Liquid Prompt](https://github.com/nojhan/liquidprompt)
Source: [smartcd](https://github.com/cxreg/smartcd)
