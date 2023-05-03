group "default" {
    targets = [
        "build",
        "docker-buildx",
        "docker-cli",
        "docker-cli-full",
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
    cache-to = ["type=inline,mode=max"]
    cache-from = ["ghcr.io/lutriseng/static-oci/build"]
    context = "build"
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "docker-buildx" {
    tags = [
        "ghcr.io/lutriseng/static-oci/docker-buildx:latest",
        "ghcr.io/lutriseng/static-oci/docker-buildx:0.10.4"
    ]
    cache-to = ["type=inline,mode=max"]
    cache-from = ["ghcr.io/lutriseng/static-oci/docker-buildx"]
    context = "docker-buildx"
    contexts = {
        build = "target:build"
    }
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "docker-cli" {
    tags = [
        "ghcr.io/lutriseng/static-oci/docker-cli:latest",
        "ghcr.io/lutriseng/static-oci/docker-cli:23.0.5"
    ]
    cache-to = ["type=inline,mode=max"]
    cache-from = ["ghcr.io/lutriseng/static-oci/docker-cli"]
    context = "docker-cli"
    contexts = {
        build = "target:build"
    }
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "docker-cli-full" {
    tags = [
        "ghcr.io/lutriseng/static-oci/docker-cli-full:latest",
        "ghcr.io/lutriseng/static-oci/docker-cli-full:23.0.5"
    ]
    cache-to = ["type=inline,mode=max"]
    cache-from = ["ghcr.io/lutriseng/static-oci/docker-cli-full"]
    context = "docker-cli-full"
    contexts = {
        docker-buildx = "target:docker-buildx"
        docker-cli = "target:docker-cli"
        docker-compose = "target:docker-compose"
    }
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "docker-compose" {
    tags = [
        "ghcr.io/lutriseng/static-oci/docker-compose:latest",
        "ghcr.io/lutriseng/static-oci/docker-compose:2.17.3"
    ]
    cache-to = ["type=inline,mode=max"]
    cache-from = ["ghcr.io/lutriseng/static-oci/docker-compose"]
    context = "docker-compose"
    contexts = {
        build = "target:build"
    }
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "hadolint" {
    tags = [
        "ghcr.io/lutriseng/static-oci/hadolint:latest",
        "ghcr.io/lutriseng/static-oci/hadolint:2.12.0"
    ]
    cache-to = ["type=inline,mode=max"]
    cache-from = ["ghcr.io/lutriseng/static-oci/hadolint"]
    context = "hadolint"
    contexts = {
        build = "target:build"
    }
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "helm" {
    tags = [
        "ghcr.io/lutriseng/static-oci/helm:latest",
        "ghcr.io/lutriseng/static-oci/helm:3.11.3"
    ]
    cache-to = ["type=inline,mode=max"]
    cache-from = ["ghcr.io/lutriseng/static-oci/helm"]
    context = "helm"
    contexts = {
        build = "target:build"
    }
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "kubectl" {
    tags = [
        "ghcr.io/lutriseng/static-oci/kubectl:latest",
        "ghcr.io/lutriseng/static-oci/kubectl:1.27.1"
    ]
    cache-to = ["type=inline,mode=max"]
    cache-from = ["ghcr.io/lutriseng/static-oci/kubectl"]
    context = "kubectl"
    contexts = {
        build = "target:build"
    }
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "kustomize" {
    tags = [
        "ghcr.io/lutriseng/static-oci/kustomize:latest",
        "ghcr.io/lutriseng/static-oci/kustomize:5.0.1"
    ]
    cache-to = ["type=inline,mode=max"]
    cache-from = ["ghcr.io/lutriseng/static-oci/kustomize"]
    context = "kustomize"
    contexts = {
        build = "target:build"
    }
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "overmind" {
    tags = [
        "ghcr.io/lutriseng/static-oci/overmind:latest",
        "ghcr.io/lutriseng/static-oci/overmind:2.4.0"
    ]
    cache-to = ["type=inline,mode=max"]
    cache-from = ["ghcr.io/lutriseng/static-oci/overmind"]
    context = "overmind"
    contexts = {
        build = "target:build"
    }
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}
