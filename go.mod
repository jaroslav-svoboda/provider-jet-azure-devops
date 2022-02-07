module github.com/crossplane-contrib/provider-jet-azuredevops

go 1.16

require (
	github.com/crossplane/crossplane-runtime v0.15.1-0.20211004150827-579c1833b513
	github.com/crossplane/crossplane-tools v0.0.0-20210916125540-071de511ae8e
	github.com/crossplane/terrajet v0.3.2
	github.com/hashicorp/terraform-plugin-sdk/v2 v2.7.0
	github.com/microsoft/terraform-provider-azuredevops v1.1.8
	github.com/pkg/errors v0.9.1
	go.uber.org/multierr v1.7.0 // indirect
	golang.org/x/text v0.3.7 // indirect
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
	k8s.io/apimachinery v0.22.0
	k8s.io/client-go v0.22.0
	sigs.k8s.io/controller-runtime v0.9.6
	sigs.k8s.io/controller-tools v0.6.2
)

// Comment out the line below instead of the above, if your Terraform provider
// uses an old version (<v2) of github.com/hashicorp/terraform-plugin-sdk.
replace (
	github.com/crossplane/terrajet => github.com/turkenh/terrajet v0.0.0-20220124141610-617a1c30a0dc
	github.com/hashicorp/terraform-plugin-sdk => github.com/turkenh/terraform-plugin-sdk v1.17.2-patch1
	github.com/spf13/afero => github.com/spf13/afero v1.2.2
)
