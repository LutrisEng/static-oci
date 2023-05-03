group "default" {
    targets = [
        "build",
        "helm",
        "kubectl",
        "overmind"
    ]
}

target "build" {
    tags = ["ghcr.io/lutriseng/static-oci/build"]
    cache-to = ["type=inline"]
    cache-from = ["ghcr.io/lutriseng/static-oci/build"]
    context = "build"
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
