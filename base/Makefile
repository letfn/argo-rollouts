build: clean ../main.yaml

../main.yaml: main.yaml
	kustomize build >$@

main.yaml: clean/main.yaml clean/dashboard.yaml
	kustomize build clean >$@

clean/main.yaml:
	curl -sSL https://github.com/argoproj/argo-rollouts/releases/download/v1.0.7/install.yaml >$@

clean/dashboard.yaml:
	curl -sSL https://raw.githubusercontent.com/argoproj/argo-rollouts/master/manifests/dashboard-install.yaml >$@

.PHONY: clean
clean:
	rm -f ../main.yaml main.yaml clean/main.yaml clean/dashboard.yaml
