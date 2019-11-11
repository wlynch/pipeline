module github.com/tektoncd/pipeline

go 1.13

require (
	cloud.google.com/go v0.47.0
	contrib.go.opencensus.io/exporter/prometheus v0.1.0
	contrib.go.opencensus.io/exporter/stackdriver v0.12.8
	contrib.go.opencensus.io/exporter/zipkin v0.1.1 // indirect
	git.apache.org/thrift.git v0.12.0 // indirect
	github.com/Azure/azure-sdk-for-go v36.1.0+incompatible
	github.com/Azure/go-autorest v13.0.1+incompatible
	github.com/Azure/go-autorest/autorest/adal v0.8.0 // indirect
	github.com/Azure/go-autorest/autorest/azure/auth v0.4.0 // indirect
	github.com/Azure/go-autorest/autorest/to v0.3.0 // indirect
	github.com/Azure/go-autorest/autorest/validation v0.2.0 // indirect
	github.com/GoogleCloudPlatform/cloud-builders v0.0.0-20190808171733-073e4daa3d0d
	github.com/MakeNowJust/heredoc v0.0.0-20170808103936-bb23615498cd // indirect
	github.com/Masterminds/semver v1.5.0 // indirect
	github.com/Microsoft/hcsshim v0.8.6 // indirect
	github.com/aws/aws-sdk-go v1.25.31
	github.com/beorn7/perks v1.0.1
	github.com/census-instrumentation/opencensus-proto v0.2.1
	github.com/chai2010/gettext-go v0.0.0-20160711120539-c6fed771bfd5 // indirect
	github.com/cloudevents/sdk-go v0.0.0-20190509003705-56931988abe3
	github.com/codedellemc/goscaleio v0.0.0-20170830184815-20e2ce2cf885 // indirect
	github.com/d2g/dhcp4 v0.0.0-20170904100407-a1d1b6c41b1c // indirect
	github.com/d2g/dhcp4client v0.0.0-20170829104524-6e570ed0a266 // indirect
	github.com/davecgh/go-spew v1.1.1
	github.com/daviddengcn/go-colortext v0.0.0-20160507010035-511bcaf42ccd // indirect
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/docker/cli v0.0.0-20191108105429-37f9a88c696a // indirect
	github.com/docker/docker v1.13.1 // indirect
	github.com/docker/go-connections v0.4.0 // indirect
	github.com/docker/go-units v0.4.0 // indirect
	github.com/evanphx/json-patch v4.5.0+incompatible
	github.com/exponent-io/jsonpath v0.0.0-20151013193312-d6023ce2651d // indirect
	github.com/fatih/camelcase v0.0.0-20160318181535-f6a740d52f96 // indirect
	github.com/ghodss/yaml v1.0.0
	github.com/gobuffalo/envy v1.7.1
	github.com/gogo/protobuf v1.3.1
	github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b
	github.com/golang/groupcache v0.0.0-20190702054246-869f871628b6
	github.com/golang/protobuf v1.3.2
	github.com/golangplus/bytes v0.0.0-20160111154220-45c989fe5450 // indirect
	github.com/golangplus/fmt v0.0.0-20150411045040-2a5d6d7d2995 // indirect
	github.com/golangplus/testing v0.0.0-20180327235837-af21d9c3145e // indirect
	github.com/google/btree v1.0.0
	github.com/google/go-cmp v0.3.1
	github.com/google/go-containerregistry v0.0.0-20191108172333-79629ba8e9a1
	github.com/google/gofuzz v1.0.0
	github.com/google/licenseclassifier v0.0.0-20181010185715-e979a0b10eeb
	github.com/google/mako v0.0.0-rc.4 // indirect
	github.com/google/uuid v1.1.1
	github.com/googleapis/gnostic v0.3.1
	github.com/gregjones/httpcache v0.0.0-20190212212710-3befbb6ad0cc
	github.com/hashicorp/errwrap v1.0.0
	github.com/hashicorp/go-multierror v1.0.0
	github.com/hashicorp/golang-lru v0.5.3
	github.com/imdario/mergo v0.3.8
	github.com/influxdata/tdigest v0.0.1 // indirect
	github.com/jenkins-x/go-scm v1.5.58
	github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af
	github.com/joho/godotenv v1.3.0
	github.com/json-iterator/go v1.1.8
	github.com/jteeuwen/go-bindata v0.0.0-20151023091102-a0ff2567cfb7 // indirect
	github.com/kardianos/osext v0.0.0-20150410034420-8fef92e41e22 // indirect
	github.com/knative/test-infra v0.0.0-20190625174906-69af8af1d3fe
	github.com/konsorten/go-windows-terminal-sequences v1.0.2
	github.com/kr/fs v0.0.0-20131111012553-2788f0dbd169 // indirect
	github.com/markbates/inflect v1.0.4
	github.com/mattbaird/jsonpatch v0.0.0-20171005235357-81af80346b1a
	github.com/matttproud/golang_protobuf_extensions v1.0.1
	github.com/mholt/caddy v0.0.0-20180213163048-2de495001514 // indirect
	github.com/mitchellh/go-homedir v1.1.0
	github.com/mitchellh/go-wordwrap v0.0.0-20150314170334-ad45545899c7 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd
	github.com/modern-go/reflect2 v1.0.1
	github.com/petar/GoLLRB v0.0.0-20130427215148-53be0d36a84c
	github.com/pkg/errors v0.8.1
	github.com/pkg/sftp v0.0.0-20160930220758-4d0e916071f6 // indirect
	github.com/prometheus/client_golang v1.0.0
	github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90
	github.com/prometheus/common v0.7.0
	github.com/prometheus/procfs v0.0.5
	github.com/rogpeppe/go-internal v1.3.2
	github.com/russross/blackfriday v2.0.0+incompatible // indirect
	github.com/sergi/go-diff v1.0.0
	github.com/shopspring/decimal v0.0.0-20191009025716-f1972eb1d1f5 // indirect
	github.com/shurcooL/githubv4 v0.0.0-20191102174205-af46314aec7b
	github.com/shurcooL/graphql v0.0.0-20181231061246-d48a9a75455f
	github.com/shurcooL/sanitized_anchor_name v1.0.0 // indirect
	github.com/sigma/go-inotify v0.0.0-20181102212354-c87b6cf5033d // indirect
	github.com/sirupsen/logrus v1.4.2
	github.com/spf13/pflag v1.0.5
	github.com/tektoncd/plumbing v0.0.0-20191108163129-9046f6fa845a
	github.com/tsenart/vegeta v12.7.0+incompatible // indirect
	github.com/vmware/photon-controller-go-sdk v0.0.0-20170310013346-4a435daef6cc // indirect
	github.com/xanzy/go-cloudstack v0.0.0-20160728180336-1e2cbf647e57 // indirect
	go.opencensus.io v0.22.1
	go.uber.org/atomic v1.4.0
	go.uber.org/multierr v1.1.0
	go.uber.org/zap v1.9.2-0.20180814183419-67bc79d13d15
	golang.org/x/build v0.0.0-20190314133821-5284462c4bec // indirect
	golang.org/x/crypto v0.0.0-20191108234033-bd318be0434a
	golang.org/x/net v0.0.0-20191109021931-daa7c04131f5
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45
	golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e
	golang.org/x/sys v0.0.0-20191110163157-d32e6e3b99c4
	golang.org/x/text v0.3.2
	golang.org/x/time v0.0.0-20191024005414-555d28b269f0
	golang.org/x/tools v0.0.0-20191111154804-8cb0d02132ec
	golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7
	google.golang.org/api v0.10.0
	google.golang.org/appengine v1.6.5
	google.golang.org/genproto v0.0.0-20191009194640-548a555dbc03
	google.golang.org/grpc v1.24.0
	gopkg.in/inf.v0 v0.9.1
	gopkg.in/yaml.v2 v2.2.5
	k8s.io/api v0.0.0
	k8s.io/apimachinery v0.0.0
	k8s.io/client-go v11.0.1-0.20190805182717-6502b5e7b1b5+incompatible
	k8s.io/code-generator v0.0.0
	k8s.io/gengo v0.0.0-20191108084044-e500ee069b5c
	k8s.io/klog v1.0.0
	k8s.io/kube-openapi v0.0.0-20190816220812-743ec37842bf
	k8s.io/kubernetes v1.16.2
	k8s.io/test-infra v0.0.0-20191111081341-3ec17d99d5ce // indirect
	k8s.io/utils v0.0.0-20191030222137-2b95a09bc58d // indirect
	knative.dev/caching v0.0.0-20190719140829-2032732871ff
	knative.dev/eventing-contrib v0.6.1-0.20190723221543-5ce18048c08b
	knative.dev/pkg v0.0.0-20191111150521-6d806b998379
	sigs.k8s.io/yaml v1.1.0
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
	//k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.0.0-20190528110419-48d5cc0538c7
	//k8s.io/sample-controller => k8s.io/sample-controller v0.0.0-20190528110501-3c1214a31e44
)
