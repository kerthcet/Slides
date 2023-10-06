## view

watch -n 1 kubectl get clusterqueues -o custom-columns=NAME:.metadata.name,COHORT:.spec.cohort,PREEMPT_POLICY:.spec.preemption
watch -n 1 kubectl get localqueues -o wide
watch -n 1 kubectl get workload -o wide
watch -n 1 kubectl get rayjob -o custom-columns=NAME:.metadata.name,STATUS:.status.jobStatus

## Apply queue-1-rayjob-low-3c3gi to cluster-queue-1-4c16gi. Resource sufficient 🚀

kubectl apply -f queue-1-rayjob-with-low-priority.yaml

## Apply queue-1-rayjob-high-3c3gi to cluster-queue-1-4c16gi. Resource insufficient 🐛 Preemption

kubectl apply -f queue-1-rayjob-with-high-pirority.yaml

## Add cluster-queue-1-4c16gi to cohort-pool for resource fair sharing 🚀

kubectl apply -f kueue-update.yaml

## Apply queue-2-rayjob-low-3c3gi to cluster-queue-2-4c16gi. Resource insufficient 🐛 Preemption

kubectl apply -f queue-2-rayjob-with-low-priority.yaml

## When queue-2-rayjob-low-3c3gi succeeded, queue-1-rayjob-low-3c3gi should resume
