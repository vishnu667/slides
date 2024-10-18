.PHONY: all
all: help

.PHONY: serve
serve:  ##@Run local Web Server.
	@ echo "Starting server..."
	@ marp -s --html src

.PHONY: generate-pptx
generate-pptx:  ##@Generate PPTX file.
	@ echo "Generating PPTX file..."
	@ marp --html --pptx --allow-local-files -I src/ -o pptx

.PHONY: setup
setup:  ##@Setup environment.
	@ echo "Setting up environment..."
	@ npm install -g @marp-team/marp-cli

HELP_FUN = \
    %help; while(<>){push@{$$help{$$2//'options'}},[$$1,$$3] \
    if/^([\w-_]+)\s*:.*\#\#(?:@(\w+))?\s(.*)$$/}; \
    print"$$_:\n", map"  \033\[36m$$_->[0]".(" "x(30-length($$_->[0])))."\033[0m$$_->[1]\n",\
    @{$$help{$$_}},"\n" for keys %help; \

help: ##@Miscellaneous Show this help.
	@echo -e "Usage: make [target] ...\n"
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)