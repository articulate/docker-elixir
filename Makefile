default: build_alpine

build_alpine:
	docker build -t local/articulate-elixir:alpine .
