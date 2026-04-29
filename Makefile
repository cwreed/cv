IMAGE_NAME := typst-dev


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
	@ docker run --rm -v $(PWD):/app $(IMAGE_NAME) -c "typstyle -i $(shell find . -name '*.typ')"


.PHONY: lint
lint: # Lint all typ files in the project
	@ docker run --rm -v $(PWD):/app $(IMAGE_NAME) -c "typstyle --check $(shell find . -name '*.typ')"


.PHONY: compile-all
compile-all: # Compile all resume.typ and cv.typ files under src/, mirroring directory structure in outputs/
	@ find src \( -name 'resume.typ' -o -name 'cv.typ' \) | while read src_file; do \
		rel_dir=$$(dirname "$$src_file" | sed 's|^src||'); \
		filename=$$(basename "$$src_file" .typ); \
		out_dir="outputs$$rel_dir"; \
		out_file="$$out_dir/connor-reed-$$filename.pdf"; \
		mkdir -p "$$out_dir"; \
		docker run \
			--rm \
			-v $(PWD):/app \
			-v /etc/timezone:/etc/timezone:ro \
			-v /etc/localtime:/etc/localtime:ro \
			$(IMAGE_NAME) -c "typst compile $$src_file $$out_file --root /app --font-path fonts/"; \
	done
