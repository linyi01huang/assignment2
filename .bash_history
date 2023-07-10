sudo yum update -y
sudo yum install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
exit
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kind create cluster --name my-cluster
kubectl cluster-info
ls
vi mysql-pod.yaml
vi mysql-service.yaml
kubectl apply -f mysql-service.yaml
kubectl create namespace mysql
kubectl create namespace webapp
kubectl apply -f mysql-service.yaml
kubectl apply -f mysql-pod.yaml
kubectl get pods -n mysql
vi mysql-pod.yaml
kubectl delete pods -n mysql
kubectl get pods -n mysql
kubectl delete pod mysql -n mysql
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 553085735006.dkr.ecr.us-east-1.amazonaws.com
sudo service docker start
exit
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 553085735006.dkr.ecr.us-east-1.amazonaws.com
kubectl get pods -n mysql
kubectl apply -f mysql-pod.yaml
kubectl get pods -n mysql
kubectl logs mysql -n mysql
kubectl get pods -n mysql
kubectl logs mysql -n mysql
kubectl delete pod mysql -n mysql
vi mysql-pod.yaml
kubectl apply -f mysql-pod.yaml
kubectl get pods -n mysql
kubectl describe pod mysql -n mysql
kubectl delete pod mysql -n mysql
kubectl get services
kubectl get services -n webapp
kubectl apply -f mysql-service.yaml
kubectl get services
kubectl get services -n webapp
kubectl get services -n mysql
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 553085735006.dkr.ecr.us-east-1.amazonaws.com

kubectl get pods -n mysql
kubectl delete pod mysql -n mysql
docker pull 553085735006.dkr.ecr.us-east-1.amazonaws.com/assignment:application
docker images
kubectl apply -f mysql-pod.yaml
kubectl get pods -n mysql
kubectl describe pod mysql -n mysql
kubectl delete pod mysql -n mysql
exit
