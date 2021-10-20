# neovim_alpine

function vi() {
	docker run -it --rm -v $(pwd):/home/developer/workspace rossioc/alpine_neovim "$@"
}
