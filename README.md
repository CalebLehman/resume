# Résumé

This repository contains the source code for a generic version of my résumé.
It is written for the [Typst](https://typst.app/) typesetting system,
mostly as an excuse to try it out.

## Building

After [installing Typst](https://github.com/typst/typst#installation) and the Computer Modern font family, 
you can build with:

```
typst compile resume.typ resume.pdf
```

## Customization

Obviously the source code in `resume.typ` can be changed as needed,
but some variables for simple customizations (colors, long vs. short) are defined at the top of the file.
