// +build tools

package tools

import (
	_ "github.com/tektoncd/plumbing"
	_ "k8s.io/code-generator/pkg/util"

	// TODO: Current test scripts test all labels, which complains about the
	// binary. We'll need to modify this to exclude tools. For now, import
	// another package to make go mod happy.
	// _ "knative.dev/pkg/codegen/cmd/injection-gen"
	_ "knative.dev/pkg/version"
)
