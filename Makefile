run:
	kubectl apply -f sc.yaml
	kubectl apply -f pvc.yaml
	kubectl apply -f back-deploy-secret-svc.yaml
	kubectl apply -f data-deploy-secret-svc.yaml
	kubectl apply -f front-deploy-svc.yaml

fill-db:
	kubectl apply -f datascript-deploy-secret.yaml

stop: 
	kubectl delete -f back-deploy-secret-svc.yaml
	kubectl delete -f data-deploy-secret-svc.yaml
	kubectl delete -f front-deploy-svc.yaml
	kubectl delete -f datascript-deploy-secret.yaml

clean:
	kubectl delete -f sc.yaml
	kubectl delete -f pvc.yaml
