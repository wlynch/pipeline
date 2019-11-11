// +build tools

package tools

import (
	_ "github.com/tektoncd/plumbing"

	_ "k8s.io/code-generator/cmd/client-gen"
	_ "k8s.io/code-generator/cmd/deepcopy-gen"
	_ "k8s.io/code-generator/cmd/defaulter-gen"
	_ "k8s.io/code-generator/cmd/informer-gen"
	_ "k8s.io/code-generator/cmd/lister-gen"
	_ "k8s.io/kube-openapi/cmd/openapi-gen"

	// TODO: Current test scripts test all labels, which complains about the
	// binary. We'll need to modify this to exclude tools. For now, import
	// another package to make go mod happy.
	// _ "knative.dev/pkg/codegen/cmd/injection-gen"
	_ "knative.dev/pkg/version"
)
