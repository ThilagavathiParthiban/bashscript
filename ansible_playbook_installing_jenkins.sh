- hosts: localhost
  become: true
  tasks:
    - name: apt update
      ansible.builtin.apt:
          update_cache: true

    - name: install java
      ansible.builtin.apt:
        name:
          - openjdk-11-jdk

    - name: download jenkins repo url
      apt_key:
        url: https://pkg.jenkins.io/debian/jenkins.io.key
        state: present
      become: true

    - name: ensure the repository is configured
      apt_repository: repo='deb http://pkg.jenkins.io/debian-stable binary/'
      become: true
    - name: update apt cache
      apt:
        update_cache: yes
        state: latest

    - name: install jenkins
      ansible.builtin.apt:
        name: jenkins
        state: latest
