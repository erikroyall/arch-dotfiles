#-- START ZCACHE GENERATED FILE
#-- GENERATED: Sun Sep 24 20:34:54 IST 2017
#-- ANTIGEN v2.0.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/home/erik/arch-dotfiles/zsh/antigen.zsh" && eval antigen $@;
  return 0;
}
fpath+=(/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found); PATH="$PATH:"
_antigen_compinit () {
  autoload -Uz compinit; compinit -C -d "/home/erik/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}
ZSH="/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh" ZSH_CACHE_DIR="/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh";
source "/home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh";
#-- SOURCE: /home/erik/.antigen/bundles/robbyrussell/oh-my-zsh/themes/robbyrussell.zsh-theme
ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
;#-- END SOURCE
typeset -aU _ANTIGEN_BUNDLE_RECORD;      _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/pip plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git themes/robbyrussell.zsh-theme theme true')
_ANTIGEN_CACHE_LOADED=true ANTIGEN_CACHE_VERSION='v2.0.2'
#-- END ZCACHE GENERATED FILE

