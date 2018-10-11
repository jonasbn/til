# Beware of eval

> eval() is a dangerous function, which executes the code it's passed with the privileges of the caller. If you run eval() with a string that could be
> affected by a malicious party, you may end up running malicious code on the user's machine with the permissions of your webpage / extension. More  
> importantly, a third-party code can see the scope in which eval() was invoked, which can lead to possible attacks in ways to which the similar
> Function is not susceptible.

## References

- [MSN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/eval)
- [Medium](https://medium.freecodecamp.org/google-publishes-a-javascript-style-guide-here-are-some-key-lessons-1810b8ad050b)
