
build:
	docker build -t dotfiles .

run: build
	docker run -it dotfiles