module github.com/tektoncd/pipeline

go 1.13

require (
	cloud.google.com/go v0.47.0 // indirect
	contrib.go.opencensus.io/exporter/prometheus v0.1.0 // indirect
	contrib.go.opencensus.io/exporter/stackdriver v0.12.8 // indirect
	github.com/Azure/azure-sdk-for-go v36.1.0+incompatible // indirect
	github.com/Azure/go-autorest/autorest v0.9.2 // indirect
	github.com/Azure/go-autorest/autorest/adal v0.8.0 // indirect
	github.com/Azure/go-autorest/autorest/to v0.3.0 // indirect
	github.com/Azure/go-autorest/autorest/validation v0.2.0 // indirect
	github.com/aws/aws-sdk-go v1.25.31 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cloudevents/sdk-go v0.0.0-20190509003705-56931988abe3
	github.com/docker/docker v1.13.1 // indirect
	github.com/docker/go-connections v0.4.0 // indirect
	github.com/docker/go-units v0.4.0 // indirect
	github.com/evanphx/json-patch v4.5.0+incompatible // indirect
	github.com/ghodss/yaml v1.0.0
	github.com/go-openapi/jsonreference v0.19.3 // indirect
	github.com/go-openapi/spec v0.19.4 // indirect
	github.com/gobuffalo/envy v1.7.1 // indirect
	github.com/gogo/protobuf v1.3.1 // indirect
	github.com/google/go-cmp v0.3.1
	github.com/google/go-containerregistry v0.0.0-20191108172333-79629ba8e9a1
	github.com/google/uuid v1.1.1 // indirect
	github.com/googleapis/gnostic v0.3.1 // indirect
	github.com/gregjones/httpcache v0.0.0-20190212212710-3befbb6ad0cc // indirect
	github.com/hashicorp/go-multierror v1.0.0
	github.com/hashicorp/golang-lru v0.5.3
	github.com/imdario/mergo v0.3.8 // indirect
	github.com/jenkins-x/go-scm v1.5.58
	github.com/json-iterator/go v1.1.8 // indirect
	github.com/konsorten/go-windows-terminal-sequences v1.0.2 // indirect
	github.com/markbates/inflect v1.0.4 // indirect
	github.com/mattbaird/jsonpatch v0.0.0-20171005235357-81af80346b1a // indirect
	github.com/mitchellh/go-homedir v1.1.0
	github.com/nbio/st v0.0.0-20140626010706-e9e8d9816f32 // indirect
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/pkg/errors v0.8.1
	github.com/prometheus/common v0.7.0 // indirect
	github.com/prometheus/procfs v0.0.5 // indirect
	github.com/shurcooL/githubv4 v0.0.0-20191102174205-af46314aec7b // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/tektoncd/plumbing v0.0.0-20191108163129-9046f6fa845a
	go.opencensus.io v0.22.1
	go.uber.org/atomic v1.4.0 // indirect
	go.uber.org/zap v1.9.2-0.20180814183419-67bc79d13d15
	golang.org/x/crypto v0.0.0-20191108234033-bd318be0434a // indirect
	golang.org/x/net v0.0.0-20191109021931-daa7c04131f5 // indirect
	golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e // indirect
	golang.org/x/sys v0.0.0-20191110163157-d32e6e3b99c4 // indirect
	golang.org/x/time v0.0.0-20191024005414-555d28b269f0 // indirect
	golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7
	google.golang.org/api v0.10.0 // indirect
	google.golang.org/appengine v1.6.5 // indirect
	google.golang.org/grpc v1.24.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/yaml.v2 v2.2.5 // indirect
	k8s.io/api v0.0.0
	k8s.io/apimachinery v0.0.0
	k8s.io/client-go v11.0.1-0.20190805182717-6502b5e7b1b5+incompatible
	k8s.io/code-generator v0.0.0
	k8s.io/gengo v0.0.0-20191108084044-e500ee069b5c // indirect
	k8s.io/klog v1.0.0 // indirect
	k8s.io/kube-openapi v0.0.0-20190816220812-743ec37842bf
	k8s.io/kubernetes v1.16.2 // indirect
	knative.dev/caching v0.0.0-20190719140829-2032732871ff
	knative.dev/eventing-contrib v0.6.1-0.20190723221543-5ce18048c08b
	knative.dev/pkg v0.0.0-20191111150521-6d806b998379
)

// Knative deps

replace (
	contrib.go.opencensus.io/exporter/stackdriver => contrib.go.opencensus.io/exporter/stackdriver v0.12.5
	github.com/google/go-containerregistry => github.com/google/go-containerregistry v0.0.0-20190320210540-8d4083db9aa0
	knative.dev/pkg => knative.dev/pkg v0.0.0-20190909195211-528ad1c1dd62
	knative.dev/pkg/vendor/github.com/spf13/pflag => github.com/spf13/pflag v1.0.5
)

// Pin k8s deps to 1.12.9

replace (
	k8s.io/api => k8s.io/api v0.0.0-20190528110122-9ad12a4af326
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.0.0-20190528110544-fa58353d80f3
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20190221084156-01f179d85dbc
	k8s.io/apiserver => k8s.io/apiserver v0.0.0-20190528110248-2d60c3dee270
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20190528110732-ad79ea2fbc0f
	k8s.io/client-go => k8s.io/client-go v0.0.0-20190528110200-4f3abb12cae2
	k8s.io/code-generator => k8s.io/code-generator v0.0.0-20181128191024-b1289fc74931
	k8s.io/gengo => k8s.io/gengo v0.0.0-20190327210449-e17681d19d3a
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.0.0-20190528110328-0ab90e449f7e
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.0.0-20190528111014-463e5d26aa13
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.0.0-20190528110839-96abc4c8d1a4
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.0.0-20190528110942-86bc7e94eb9a
	k8s.io/kubelet => k8s.io/kubelet v0.0.0-20190528110910-f5f997cd2103
	k8s.io/kubernetes => k8s.io/kubernetes v1.12.9
	k8s.io/metrics => k8s.io/metrics v0.0.0-20190528110627-05eb8901940c
)

// Local overrides for testing. Remove before submitting.
replace github.com/tektoncd/plumbing => ../plumbing
