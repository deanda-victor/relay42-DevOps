#!/bin/bash
echo Running Ansible...
ansible-playbook -i "localhost," -c local optest.yml --ask-vault-pass 
echo Relay42 Demo Starting...
cd  ~/relay42-optest/
./mvnw spring-boot:run -Dspring.config.location=/tmp/application.properties
