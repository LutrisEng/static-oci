group "default" {
    targets = [
        "build",
        "docker-buildx",
        "docker-cli",
        "docker-compose",
        "hadolint",
        "helm",
        "kubectl",
        "kustomize",
        "overmind"
    ]
}

target "build" {
    tags = ["ghcr.io/lutriseng/static-oci/build"]
    cache-to = ["type=inline"]
    cache-from = ["ghcr.io/lutriseng/static-oci/build"]
    context = "build"
}

target "docker-buildx" {
    tags = [
        "ghcr.io/lutriseng/static-oci/docker-buildx:latest",
        "ghcr.io/lutriseng/static-oci/docker-buildx:0.10.4"
    ]
    context = "docker-buildx"
    contexts = {
        build = "target:build"
    }
}

target "docker-cli" {
    tags = [
        "ghcr.io/lutriseng/static-oci/docker-cli:latest",
        "ghcr.io/lutriseng/static-oci/docker-cli:23.0.5"
    ]
    context = "docker-cli"
    contexts = {
        build = "target:build"
    }
}

target "docker-compose" {
    tags = [
        "ghcr.io/lutriseng/static-oci/docker-compose:latest",
        "ghcr.io/lutriseng/static-oci/docker-compose:2.17.3"
    ]
    context = "docker-compose"
    contexts = {
        build = "target:build"
    }
}

target "hadolint" {
    tags = [
        "ghcr.io/lutriseng/static-oci/hadolint:latest",
        "ghcr.io/lutriseng/static-oci/hadolint:2.12.0"
    ]
    context = "hadolint"
    contexts = {
        build = "target:build"
    }
}

target "helm" {
    tags = [
        "ghcr.io/lutriseng/static-oci/helm:latest",
        "ghcr.io/lutriseng/static-oci/helm:3.11.3"
    ]
    context = "helm"
    contexts = {
        build = "target:build"
    }
}

target "kubectl" {
    tags = [
        "ghcr.io/lutriseng/static-oci/kubectl:latest",
        "ghcr.io/lutriseng/static-oci/kubectl:1.27.1"
    ]
    context = "kubectl"
    contexts = {
        build = "target:build"
    }
}

target "kustomize" {
    tags = [
        "ghcr.io/lutriseng/static-oci/kustomize:latest",
        "ghcr.io/lutriseng/static-oci/kustomize:5.0.1"
    ]
    context = "kustomize"
    contexts = {
        build = "target:build"
    }
}

target "overmind" {
    tags = [
        "ghcr.io/lutriseng/static-oci/overmind:latest",
        "ghcr.io/lutriseng/static-oci/overmind:2.4.0"
    ]
    context = "overmind"
    contexts = {
        build = "target:build"
    }
}
