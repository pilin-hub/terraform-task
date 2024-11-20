# terraform-task
### English:

1. Install Terraform, Minikube, and kubectl on your system.
2. Initialize Minikube with minikube start.
3. Clone the repository with the Terraform script.
4. Navigate to the project directory and run:

### Initialize **Terraform**:
```bash 
terraform init
```
### Checking the configuration:
```bash
terrafom plan
```
### Applying the configuration:
```bash
terraform apply
```
5.Verify Istio and the sample application:
    Check the Istio Ingress Gateway: kubectl get svc -n istio-system.
    Access the sample app through the Ingress Gateway IP.

### Русский:

1. Установите Terraform, Minikube и kubectl на вашей системе.
2. Инициализируйте Minikube командой minikube start.
3. Клонируйте репозиторий со скриптом Terraform.
4. Перейдите в директорию проекта и выполните:
### Инициализируйте **Terraform**:
```bash 
terraform init
```
### Проверка конфигурацию:
```bash
terrafom plan
``` 
### Применение конфигурации:
```bash
terraform apply
```
5. Проверьте Istio и пример приложения:
      - Убедитесь, что Ingress Gateway запущен: kubectl get svc -n istio-system.
      -  Доступ к приложению осуществляется через IP Ingress Gateway.    