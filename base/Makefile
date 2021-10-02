build: clean ../main.yaml

../main.yaml: main.yaml
	kustomize build >$@

main.yaml: clean/main.yaml
	kustomize build clean >$@

clean/main.yaml: clean/values.yaml
	curl -sSL https://github.com/argoproj/argo-rollouts/releases/download/v1.0.7/install.yaml >$@

.PHONY: clean
clean:
	rm -f ../main.yaml main.yaml clean/main.yaml
