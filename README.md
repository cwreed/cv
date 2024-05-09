# Connor's CV

This is a small library I use to create my CV and resume(s) with [typst](https://github.com/typst/typst). The template and style is heavily inspired by the [brilliant-CV](https://github.com/mintyfrankie/brilliant-CV/tree/main) project.

## Commands
```
make download-fonts         # download open source fonts used in project
make build                  # build Docker image for typst
make fmt                    # format .typ files
make compile-resume         # compile resume into PDF
```

## System requirements
* `docker`
* `make`
* `jq`