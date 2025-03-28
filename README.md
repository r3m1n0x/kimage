************************************************
*                                              *
*    __   .__                                  *
*   |  | _|__| _____ _____     ____   ____     *
*   |  |/ /  |/     \\__  \   / ___\_/ __ \    *
*   |    <|  |  Y Y  \/ __ \_/ /_/  >  ___/    *
*   |__|_ \__|__|_|  (____  /\___  / \___  >   *
*        \/        \/     \//_____/      \/    *
*                                              *
************************************************

# kimage

A lightweight debugging container image based on Alpine Linux, specifically designed for quick and easy troubleshooting within Kubernetes clusters.

---

## Why kimage?

Debugging issues in Kubernetes clusters often requires having multiple essential tools at hand. `kimage` provides a compact, ready-to-use environment with the most critical utilities for efficiently diagnosing network, DNS, and deployment issues.

---

## Included Tools

The container image includes these essential debugging tools:

- **bash** – Standard shell for easy navigation.
- **curl** – Data transfer and communication via HTTP/S.
- **wget** – Simple file downloads over HTTP/S.
- **git** – Version control for quick cloning and testing.
- **vim** – Quick editing and file inspection.
- **nmap** – Network diagnostics and port scanning.
- **bind-tools** – DNS queries and analysis.
- **kubectl** – Kubernetes cluster control and diagnostics.
- **helm** – Kubernetes package and release management.

---

## Usage

### Building the Docker Image

```bash
docker build -t kimage:latest .
```

### Running in a Kubernetes Cluster

Start an interactive debugging session within your Kubernetes cluster:

```bash
kubectl run -it --rm debug-pod --image=ghcr.io/r3m1n0x/kimage:latest --restart=Never -- /bin/bash
```

Alternatively, create and apply a Pod YAML file:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: debug-pod
spec:
  containers:
  - name: debug-container
    image: kimage:latest
    command: ["/bin/bash"]
    stdin: true
    tty: true
```

```bash
kubectl apply -f debug-pod.yaml
kubectl exec -it debug-pod -- bash
```

---

## Notes

- This image is optimized for low memory usage and quick startup.
- For additional tools, please create an issue or submit a pull request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Contributing

Improvements, suggestions, and contributions are very welcome! Please open an issue or create a pull request.

---

