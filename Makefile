gen-protoc:
	protoc \
		-I proto \
		--go_out=gen/go \
		--go-grpc_out=gen/go \
		--go_opt=paths=source_relative \
		--go-grpc_opt=paths=source_relative \
		proto/sso/v1/sso.proto

gen-uml:
	docker run --rm -v ./uml/workspace:/workspace plantuml/plantuml -tpng -o /workspace/imgs /workspace/pumls/*.puml && \
	ls ./uml/workspace/imgs || true
