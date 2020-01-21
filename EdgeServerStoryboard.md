## Edge Server storyboard

It is expected that Kubernetes users will have many clusters in their enterprises, both on and off premises. The problem for the enterprise is to manage all of these clusters to provide for:-

- Control of deployment activities
- Control of cluster compliance
- Visibility of workloads

We will start to look at this here, but investigate The IBM CloudPak for Multi Cloud Management for a more comprehensive picture.

1. Register the edge server and deploy Checkout service there
2. Deploy Checkout service (helm chart) to their edge server

This is a simple process that federated an ICP cluster to an MCM Hub cluster. The federated Edge cluster can deploy a full IBM Cloud Private configuration or select a deployment that uses the IBM Cloud Private minimum required services for operating the edge server for a smaller resource footprint. You can use the edge computing profile to deploy IBM Cloud Private and the IBM Multicloud Manager Klusterlet with a smaller resource footprint.

The edge computing profile is designed specifically for IBM Edge Computing for Servers to place only the minimum required services that are needed for supporting edge server management and for supporting business-critical applications that you host on IBM Cloud Private. With this profile, you are still able to authenticate users, collect log and event data, and deploy workloads in a single node or a set of clustered worker nodes.

Here are the [Installation instructions](https://www.ibm.com/support/knowledgecenter/SSBS6K_3.2.0/supported_environments/edge/install_edge.html)

This concludes the Edge Server storyboard.
