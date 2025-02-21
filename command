sudo podman run --rm --privileged --volume .:/output --volume ./config-qcow2.json:/config.json registry.redhat.io/rhel9/bootc-image-builder:latest --type qcow2 --config /config.json --tls-verify=false --rootfs xfs quay.io/tmichett/fedora_bootc:latest

sudo podman run \
    --rm \
    -it \
    --privileged \
    --pull=newer \
    --security-opt label=type:unconfined_t \
    -v .:/output \
    -v /var/lib/containers/storage:/var/lib/containers/storage \
    registry.redhat.io/rhel9/bootc-image-builder:latest \
    build \
    --type iso \
    quay.io/tmichett/fedora_bootc:latest


sudo podman run     --rm     -it     --privileged     --pull=never     --security-opt label=type:unconfined_t     -v .:/output     -v /var/lib/containers/storage:/var/lib/containers/storage     registry.redhat.io/rhel9/bootc-image-builder:latest     build     --type iso     quay.io/tmichett/fedora_bootc:latest


