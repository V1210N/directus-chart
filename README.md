This is a Helm chart for installing Directus. Currently, this chart has only been tested with PostgreSQL, but likely works with other databases too.

You can include extensions you'd like to add to your deployment. Check the `directusExtensions` parameter in `values.yaml`.

The PVC generated persists through `helm uninstall`. This means that you'll only lose your data if you explicitly delete the PVC or if you delete the namespace the installation is in.

# Installation

You can install this chart using:
```
helm repo add v1210n https://v1210n.github.io/directus-chart/
helm install directus v1210n/directus
```

# TO-DO
- Adjust readiness and liveness probes so that there are no errors in the very first few seconds of the pod's creation
- Write README for each customizable option for `values.yaml` particular to this chart
- Allow adding environment variables via `values.yaml`
- Add option to customize `directus-extension-installer` directories via environment variables
- Make sure persistence behavior is coeherent. i.e.: When storage should be wiped, and whether it actually does
- Test with other databases and tweak `values.yaml` to remove PostgreSQL-specific references