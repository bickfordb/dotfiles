all:

sync:
	rm -rf /tmp/dotfiles.new
	gh cs cp -e -r remote:/workspaces/.codespaces/.persistedshare/dotfiles /tmp/dotfiles.new
	rsync -az /tmp/dotfiles.new/ .
	rm -rf /tmp/dotfiles.new

.PHONY: all sync


