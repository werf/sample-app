werf converge --repo k3d-registry.sample-app.test:5000/sample-app
# let's check out deployment manifest
cat .helm/templates/deployment.yaml
# typo in the image field, let's fix it
sed -e 's|"star"|"start"|' -i .helm/templates/deployment.yaml
werf converge --repo k3d-registry.sample-app.test:5000/sample-app
curl sample-app.test/ping
