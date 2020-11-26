# LaTeX Makefile v0.33 -- LaTeX only

# for the while loop below
SHELL=/bin/zsh

all: ## Compile paper
	xelatex cv.tex

clean: ## Clean output files
	rm cv.aux cv.log cv.pdf

watch: ## Recompile on updates to the source file
	@while [ 1 ]; do; inotifywait cv.tex; sleep 0.01; make all; done
	# for Bash users, replace the while loop with the following
	# @while true; do; inotifywait $(PAPER); sleep 0.01; make all; done
