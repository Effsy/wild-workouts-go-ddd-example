docker_build('users-service', '.', dockerfile='docker/app-k8s/Dockerfile', build_args = {"SERVICE":"users"})
docker_build('trainer-service', '.', dockerfile='docker/app-k8s/Dockerfile', build_args = {"SERVICE":"trainer"})
docker_build('trainings-service', '.', dockerfile='docker/app-k8s/Dockerfile', build_args = {"SERVICE":"trainings"})
docker_build('web', '.', dockerfile='docker/web-k8s/Dockerfile')

k8s_yaml('kubernetes/server-env.yaml')
k8s_yaml('kubernetes/firestore-service.yaml')
k8s_yaml('kubernetes/mysql-service.yaml')
k8s_yaml('kubernetes/users-service.yaml')
k8s_yaml('kubernetes/trainer-service.yaml')
k8s_yaml('kubernetes/trainings-service.yaml')
k8s_yaml('kubernetes/web.yaml')

# k8s_resource('example-go', port_forwards=8000)