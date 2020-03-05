default: build_1.10

build_1.10:
	docker build -t local/articulate-elixir:1.10 ./1.10

build_1.9:
	docker build -t local/articulate-elixir:1.9 ./1.9
