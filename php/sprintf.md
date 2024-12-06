# sprintf

Like many other languages PHP has a `sprintf`, the reason for this til was that recently I came across two sections at about 18 lines of code, that could be written as single lines using `sprintf`.
So I dug into the PHP documentation to find out  whether there was a reason not to.

## Zero-padding

```php
<?php
# sprintf.php

$numbers = array("0", "1", "1234", "56789", "123456789", "1234567890");


foreach ($numbers as $number) {
    echo sprintf("PF%'.07d\n", $number);
}

?>
```

It outputs:

```text
php sprintf.php
PF0000000
PF0000001
PF0001234
PF0056789
PF123456789
PF1234567890
```

Some notes on the above.

- The constant in sprintf: `7` indicates the maximum number of padding, meaning that the length of the value to be padded can will be padded with zeroes for all of the numbers exceeding it's length
  - A single 0 becomes 7 zeroes
- If the length of the value exceeds the padding maximum it is just displayed as is and no padding is applied.

## Resources and References

- [PHP Documentation](https://www.php.net/manual/en/function.sprintf.php)
