kubectl delete -f queue-1-rayjob-with-low-priority.yaml
kubectl delete -f queue-1-rayjob-with-high-pirority.yaml
kubectl delete -f queue-2-rayjob-with-low-priority.yaml
kubectl delete -f kueue.yaml

kubectl apply -f kueue.yaml