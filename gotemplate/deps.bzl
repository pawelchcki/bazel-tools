load("@bazel_gazelle//:deps.bzl", "go_repository")

def gotemplate_dependencies():
    _maybe(
        go_repository,
        name = "com_github_ghodss_yaml",
        commit = "c7ce16629ff4cd059ed96ed06419dd3856fd3577",
        importpath = "github.com/ghodss/yaml",
    )

    _maybe(
        go_repository,
        name = "in_gopkg_yaml_v2",
        commit = "5420a8b6744d3b0345ab293f6fcba19c978f1183",
        importpath = "gopkg.in/yaml.v2",
    )

    _maybe(
        go_repository,
        name = "com_github_masterminds_sprig",
        importpath = "github.com/Masterminds/sprig",
        sum = "h1:z4yfnGrZ7netVz+0EDJ0Wi+5VZCSYp4Z0m2dk6cEM60=",
        version = "v2.22.0+incompatible",
    )

    _maybe(
        go_repository,
        name = "com_github_masterminds_goutils",
        importpath = "github.com/Masterminds/goutils",
        sum = "h1:zukEsf/1JZwCMgHiK3GZftabmxiCw4apj3a28RPBiVg=",
        version = "v1.1.0",
    )

    _maybe(
        go_repository,
        name = "com_github_masterminds_semver",
        importpath = "github.com/Masterminds/semver",
        sum = "h1:H65muMkzWKEuNDnfl9d70GUjFniHKHRbFPGBuZ3QEww=",
        version = "v1.5.0",
    )

    _maybe(
        go_repository,
        name = "org_golang_x_crypto",
        importpath = "golang.org/x/crypto",
        sum = "h1:3zb4D3T4G8jdExgVU/95+vQXfpEPiMdCaZgmGVxjNHM=",
        version = "v0.0.0-20200323165209-0ec3e9974c59",
    )

    _maybe(
        go_repository,
        name = "com_github_imdario_mergo",
        importpath = "github.com/imdario/mergo",
        sum = "h1:UauaLniWCFHWd+Jp9oCEkTBj8VO/9DKg3PV3VCNMDIg=",
        version = "v0.3.9",
    )

    _maybe(
        go_repository,
        name = "com_github_google_uuid",
        importpath = "github.com/google/uuid",
        sum = "h1:Gkbcsh/GbpXz7lPftLA3P6TYMwjCLYm83jiFQZF/3gY=",
        version = "v1.1.1",
    )

    _maybe(
        go_repository,
        name = "com_github_huandu_xstrings",
        importpath = "github.com/huandu/xstrings",
        sum = "h1:gvV6jG9dTgFEncxo+AF7PH6MZXi/vZl25owA/8Dg8Wo=",
        version = "v1.3.0",
    )

    _maybe(
        go_repository,
        name = "com_github_mitchellh_copystructure",
        importpath = "github.com/mitchellh/copystructure",
        sum = "h1:Laisrj+bAB6b/yJwB5Bt3ITZhGJdqmxquMKeZ+mmkFQ=",
        version = "v1.0.0",
    )

    _maybe(
        go_repository,
        name = "com_github_mitchellh_reflectwalk",
        importpath = "github.com/mitchellh/reflectwalk",
        sum = "h1:FVzMWA5RllMAKIdUSC8mdWo3XtwoecrH79BY70sEEpE=",
        version = "v1.0.1",
    )

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)
