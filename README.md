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
  
### ДЗ занятия №9 - Принципы создания инфраструктурного кода Terraform 2

* Добавлено правило файрволла для ssh  
* Добавлен статический IP для инстанса с приложением  
* Добавлены шаблоны packer для VM: db.json и app.json  
* Добавлены шаблоны terraform для развёртывания VM: db.tf и app.tf  
* Добавлены модули terraform на основе шаблонов db.tf, app.tf и vpc.tf  
  
Как запустить проект:  
Перейти в директорию terraform\prod  
выполнить terraform init  
выполнить terraform apply  
 
### ДЗ занятия 10 - Управление конфигурацией Ansible-1  
  
В процессе сделано:
* Установлен Ansible  
* Созданы файлы Inventoy (inventory и inventory.yml)  
* Создан файл ansible.cfg с описанием конфигурации по умолчанию  
* Протестирована работа с группами хостов  
* Рассмотрены варианты выполнения команд через command и shell и различия возврата команд  
* Описан Playbook clone.yml который клонирует приложение  
````
---
- name: Clone
  hosts: app
  tasks:
    - name: Clone repo
      git:
        repo: https://github.com/express42/reddit.git
        dest: /home/appuser/reddit
````  
  
результат первого выполнения  
````
PLAY RECAP ************************************************************************
appserver                  : ok=2    changed=0    unreachable=0    failed=0  
````
после удаления существующего каталога с приложением
````
PLAY RECAP ************************************************************************
appserver                  : ok=2    changed=1    unreachable=0    failed=0
````  
  
### ДЗ занятия 11 - Ansible-2, templates, handlers, tags

В процессе сделано:  
* Создан playbook для приложения и БД  
* Добавлены tags к задачам playbook-ов  
* Установил переменные  
* Мультизадачный Playbook разделён на несколько playbook-ов app.yml, db.yml, site.yml  
* Заменил провиженеры в Packer c shell скриптов на playbook-и Ansible  
  

### ДЗ занятия 12 - Ansible-3, роли, управление настройками к нескольким окружениям  
  
В процессе сделано:  
* Созданы роли Ansible  
* Описаны два окружение stage и prod  
* Настроена роль jdauphant.nginx из коммьюнити Ansible Galaxy для обратного проксирование приложения  
* Создан playbook users.yml для создания пользователей с использованием Ansible Vault   
  
