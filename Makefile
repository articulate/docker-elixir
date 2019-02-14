default: build_latest

build_latest:
	docker build -t local/articulate-elixir .

build_1_8:
	docker build -t local/articulate-elixir:1.8 ./1.8
