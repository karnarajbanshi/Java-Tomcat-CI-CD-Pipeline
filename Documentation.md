# DevOps Project Documentation

## Table of Contents
- [Project Overview](#project-overview)
- [Infrastructure Setup](#infrastructure-setup)
  - [Provisioning VMs using Vagrant](#provisioning-vms-using-vagrant)
- [CI/CD Pipeline](#cicd-pipeline)
  - [Setting Up Jenkins](#setting-up-jenkins)
  - [Docker Setup](#docker-setup)
  - [Integrating Monitoring and Code Quality Tools](#integrating-monitoring-and-code-quality-tools)
- [Docker Swarm](#docker-swarm)
- [Conclusion](#conclusion)

## Project Overview
This DevOps project sets up a Continuous Integration/Continuous Deployment (CI/CD) pipeline for a Java Tomcat application. The project leverages VirtualBox and Vagrant for infrastructure provisioning, Jenkins for CI/CD, Docker for containerization, and various monitoring and code quality tools such as Prometheus, Grafana, SonarQube, Nexus Artifactory, and Node Exporter.

## Infrastructure Setup

### Provisioning VMs using Vagrant
Vagrant is used to automate the creation and provisioning of virtual machines. Two VMs are created: one for the Jenkins master and another for the Jenkins slave.

#### Vagrantfile Configuration
The Vagrantfile defines the configuration for both VMs, including their operating systems, network settings, and provisioning scripts.

You can find the full Vagrantfile [here](https://github.com/karnarajbanshi/Java-Tomcat-CI-CD-Pipeline/blob/main/Vagrantfile).

## CI/CD Pipeline

### Setting Up Jenkins
- **Install Jenkins**: Jenkins is installed on the master VM using the provisioning script in the Vagrantfile.
- **Configure Jenkins**: After installation, Jenkins is started and enabled to run on system boot.

### Docker Setup
- **Install Docker**: Docker is installed on both the master and slave VMs during the provisioning process.
- **Docker Compose**: Docker Compose is used to manage the deployment of Prometheus, Grafana, SonarQube, and Nexus Artifactory containers.

### Integrating Monitoring and Code Quality Tools

#### Prometheus & Grafana
- **Prometheus**: Used for monitoring system metrics.
- **Grafana**: Used for visualizing the metrics collected by Prometheus.

#### SonarQube
- **SonarQube**: Integrated with Jenkins for static code analysis and to ensure code quality.

#### Nexus Artifactory
- **Nexus**: Used as a repository manager for storing build artifacts.

#### Node Exporter
- **Node Exporter**: Installed on the VMs to collect hardware and OS metrics exposed by Prometheus.

#### Docker Compose File
The Docker Compose file defines the services for Prometheus, Grafana, SonarQube, and Nexus Artifactory.

You can find the full Docker Compose file [here](https://github.com/karnarajbanshi/Java-Tomcat-CI-CD-Pipeline/blob/main/docker-compose.yml).

## Docker Swarm

### Initiating Docker Swarm
- **Initialize Swarm on the Slave Node**:
  - Docker Swarm is initiated on the slave node to orchestrate the containers.
- **Convert Docker Compose Services to Swarm Services**:
  - Services defined in the Docker Compose file are converted to Docker Swarm services for better orchestration.

## Conclusion
This project demonstrates the setup of a CI/CD pipeline for a Java Tomcat application using Jenkins, Docker, and various monitoring and code quality tools.

### Key Takeaways
- **Automated Infrastructure Provisioning**: Vagrant was used to automate the creation and provisioning of VMs, simplifying the setup process.
- **CI/CD Pipeline Setup**: Jenkins was configured to automate the build, test, and deployment processes.
- **Containerization**: Docker and Docker Compose facilitated the deployment and management of various services.
- **Monitoring and Code Quality**: Integration of Prometheus, Grafana, SonarQube, Nexus Artifactory, and Node Exporter provided comprehensive monitoring and code quality checks.

### Future Improvements
- **Infrastructure as Code (IaC)**: Consider using Terraform for infrastructure provisioning to improve scalability and management.
- **Configuration Management**: Utilize Ansible for more robust configuration management across VMs.
- **Advanced Orchestration**: Explore Kubernetes as an alternative to Docker Swarm for more advanced orchestration capabilities.
