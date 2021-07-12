# <img src="https://www.weave.works/assets/favicon/favicon_150px.png" width="48" height="48"/> **weave**works  [fluxctl](https://chocolatey.org/packages/fluxctl)

## Declarative desired state for Kubernetes

An optional command line client for Weavworks Flux that allows you to access a running cloud deploy daemon.

[Flux](https://github.com/weaveworks/flux) is a tool that automatically ensures that the state of a cluster matches the config in git. It uses an operator in the cluster to trigger deployments inside Kubernetes, which means you don't need a separate CD tool. It monitors all relevant image repositories, detects new images, triggers deployments and updates the desired running configuration based on that (and a configurable policy).

More information can be found here: https://www.weave.works/
Github: https://github.com/weaveworks 