all: help

run: install install_brews ## Default installation

install: ## Install all dotfiles
	stow --verbose --target=$$HOME --restow */

uninstall: ## Uninstall all dotfiles
	stow --verbose --target=$$HOME --delete */

install_brews: ## Install all brews
	xargs brew install < brew/leaves.txt
	
save_brews: ## Save all brews
	brew leaves > brew/leaves.txt

define print_help
	grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(1) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36mmake %-20s\033[0m%s\n", $$1, $$2}'
endef

help:
	@printf "\033[36mHelp: \033[0m\n"
	@$(foreach file, $(MAKEFILE_LIST), $(call print_help, $(file));)
