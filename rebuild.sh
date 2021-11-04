CHART_NAME=directus-chart
REPO_URL=https://v1210n.github.io/$CHART_NAME

# Validate and generate new version
helm lint
helm package .
helm repo index --url $REPO_URL .