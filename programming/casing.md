# Casing

## Various Casing Styles

### Camel Case

- `camelCase`

Also referred to as lower camel case, this casing style is used in many programming languages, including JavaScript, Java, and Python. The first letter of the first word is lowercase, and the first letter of each subsequent word is capitalized.

This is used for variable names, function names, and method names in Java.

### Pascal Case

- `PascalCase`

Also referred to as upper camel case, this casing style is used in many programming languages, including C#, C++, and Swift. The first letter of each word is capitalized.

This is used for class names, interfaces, annotations, enums and records in Java.

### Snake Case

- `snake_case`

Using the underscore character to separate words, this casing style is used in many programming languages, including Python, Ruby, and Rust. The underscore is close to the ground hence the reference to the snake.

Do note:

- `_` is part of the alphanumeric set in Perl together with letters and numbers
- _double-clicking_ to select these word will take the entire string, try with: `i_adore_snakes`, compared to kebab-case, which splits at hyphen/dash. This might be configurable depending on your circumstances

### Kebab Case

- `kebab-case`

The string is penetrated by hyphens, hence the kebab reference.

This is not recommended as per the Java programming recommendations, see: [TechTarget: CamelCase Definition](https://www.techtarget.com/whatis/definition/CamelCase)

Do note:

- _double-clicking_ to select these word will not necessarily take the entire string, try with: `i_love_kebab`, it might just take the word up to the hyphen/dash, compared to kebab-case, which allows for selection of the whole string. This might be configurable depending on your circumstances.

### Train Case

- `Train-Case`

This is a variation of kebab case where the first letter of each word is capitalized.

### Cobol Case

- `COBOL-CASE`

A variation of kebab case and Train-Case where all letters are capitalized.

### Studly Caps

- `StUdLyCaPs`

Also referred to as `BiCapitalized` or `Alternating Caps`, this casing style is used in some programming languages, including PHP. The first letter of each word is capitalized, but the words are not separated by any character.

In the PHP programming guideline: [PSR-1](https://www.php-fig.org/psr/psr-1/) this is mentioned, but the example resembles more of a variation of Pascal case.

### Screaming Snake Case

- `SCREAMING_SNAKE_CASE`

Capitalizing all letters and separating words with underscores. In some languages this is used for constants, for example Java.

Also referred to as: `MACRO_CASE`

## Acronyms

I have seen various uses of acronyms in the case styles listed above. I do prefer to have my acronyms in uniform case written as either: `PDF` or `pdf`

The variation observed with example Camel Case of: `Pdf` is _wrong_ in my opinion. Acronyms are already made up of a set of words, for example "PDF" means: "Portable Document Format", "PDF" in itself is not a word and according to the Camel Case formatting rule, this should read: "PDF" not "Pdf".

Example:

- `writePdfFile` should be written as: `writePDFFile` the first one is prettier, but it is incorrect if you ask me

As for snake case:

- `write_PDF_file` or `write_pdf_file` is at least uniform and is separated using the snake case separator: `_`.

There is not such thing as "Pdf" it is either "PDF" of "pdf". As stated: "Pdf" is an incorrect and inconsistent abbreviation/acronym where as both "PDF" and "pdf" are consistent, the first one more correct, but the other one might be acceptable as part of the formatting.

I can read: "PDF", "pdf" and "Pdf", but the last one rubs me every time I see it. I can of course stick to case insensitive searching, then it does not matter.

## Resources and References

- [Wikipedia: "Snake case"](https://en.wikipedia.org/wiki/Snake_case)
- [Wikipedia: "Camel case"](https://en.wikipedia.org/wiki/Camel_case)
- [Wikipedia: "Kebab case"](https://en.wikipedia.org/wiki/Letter_case#Special_case_styles)
- [Wikipedia: "Studly caps"](https://en.wikipedia.org/wiki/Studly_caps)
- [Wikipedia: "Screaming snake case"](https://en.wikipedia.org/wiki/Snake_case#Screaming_snake_case)
- [Wikipedia: "Letter case"](https://en.wikipedia.org/wiki/Letter_case#Special_case_styles)
- [Wikipedia: "Alternating caps"](https://en.wikipedia.org/wiki/Alternating_caps)
- [StackOverflow: "What is the difference between StudlyCaps and camelCase?"](https://stackoverflow.com/questions/32731717/what-is-the-difference-between-studlycaps-and-camelcase)]
- [TechTarget: CamelCase Definition](https://www.techtarget.com/whatis/definition/CamelCase)
