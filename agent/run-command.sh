sudo -E DEBUG_ECHO_INSTANCES_SHARED=true \
    ENABLE_DEBUG_ECHO=1 \
    RUST_BACKTRACE=1 \
    RUST_LOG=info \
    KUBECONFIG=/etc/rancher/k3s/k3s.yaml \
    METRICS_PORT=8082 \
    DISCOVERY_HANDLERS_DIRECTORY=/home/plakic/playground/nubificus/akri \
    AGENT_NODE_NAME=jarvis \
    HOST_CRICTL_PATH=/usr/bin/crictl \
    HOST_RUNTIME_ENDPOINT=/run/k3s/containerd/containerd.sock \
    HOST_IMAGE_ENDPOINT=/run/k3s/containerd/containerd.sock \
    $HOME/.cargo/bin/cargo run

