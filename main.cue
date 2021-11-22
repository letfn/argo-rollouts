package boot

import (
	"github.com/defn/boot"
)

repo: boot.#Repo & {
	repo_name:         "katt-argo-rollouts"
	version:           "1.0.7"
	upstream_manifest: "https://github.com/argoproj/argo-rollouts/releases/download/v\(version)/install.yaml"
}
