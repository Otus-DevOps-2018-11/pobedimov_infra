# pobedimov_infra
pobedimov Infra repository

### ДЗ занятия №5 - Знакомство с GCP
ssh -i /root/.ssh/appuser -A appuser@35.233.31.193 -t ssh 10.132.0.3

bastion_IP = 35.233.31.193  
someinternalhost_IP = 10.132.0.3  
  
### ДЗ занятия №6 - Основные сервисы GCP  
testapp_IP = 35.210.175.203  
testapp_port = 9292  
  
### ДЗ занятия №7 - Практика сборки образов VM при помощи Packer  
Установлен Packer, описан шаблон ubuntu16.json, протестирова сборка образа  
Параметризированы  ID проекта, source_image_family, machine_type, image_description, disk_size, disk_type, tags  
в файле variables.json  
в качестве примера описания переменных в репозитории файл variables.json.example  
  
### ДЗ занятия №8 - Практика IaC с использованием Terraform  
Установлен и инициализирован Terraform, опеределён Provider для подключения к GCP,  
изучено добавление и изменение ресурсов, опредлелены Provisioners и input переменные  
в качестве примере описания переменных в репозитории файл terraform.tfvars.example  

 
