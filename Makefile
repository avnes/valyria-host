.PHONY: test nodestroy converge verify destroy install dev

test:
	cd ./ansible/roles/ansible-role-freehold && poetry run molecule test

nodestroy:
	cd ./ansible/roles/ansible-role-freehold && poetry run molecule test --destroy=never

converge:
	cd ./ansible/roles/ansible-role-freehold && poetry run molecule converge

verify:
	cd ./ansible/roles/ansible-role-freehold && poetry run molecule verify

destroy:
	cd ./ansible/roles/ansible-role-freehold && poetry run molecule destroy

install:
	bin/01_run_ansible.sh

dev:
	poetry install
