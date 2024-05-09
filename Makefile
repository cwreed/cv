IMAGE_NAME := typst-dev
DATE := $(shell date +'%Y-%m')


default: help


.PHONY: help
help: # Show help for each of the Makefile recipes.
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done


.PHONY: download-fonts
download-fonts: # Download the fonts used in the project.
	@ ./scripts/download-font-awesome-fonts
	@ ./scripts/download-google-fonts


.PHONY: build
build: # Build a Docker image that can be used to run typst
	@ docker build -t $(IMAGE_NAME) .


.PHONY: fmt
fmt: # Format all typ files in the project
	@ docker run --rm -v $(PWD):/app $(IMAGE_NAME) -c "typstfmt $(shell find . -name '*.typ')"


.PHONY: compile-resume
compile-resume: # Compile the resume.typ file to a PDF
	@ docker run --rm -v $(PWD):/app $(IMAGE_NAME) -c "typst compile src/resume.typ outputs/connor-reed-resume.pdf --font-path fonts/"