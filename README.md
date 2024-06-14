# DevOps CI/CD Pipeline for Java Tomcat Application

![DevOps CI/CD Pipeline](https://github.com/karnarajbanshi/Java-Tomcat-CI-CD-Pipeline/blob/main/assets/devops%20project%20architecture.png)

This repository showcases a robust DevOps setup for automating the Continuous Integration and Continuous Deployment (CI/CD) pipeline of a Java Tomcat application. The project utilizes Jenkins, Docker, and various monitoring and code quality tools to streamline the software delivery process.

## Key Features

- **Automated VM Provisioning:** Vagrant automates the creation and configuration of virtual machines on VirtualBox.
- **CI/CD with Jenkins:** Jenkins orchestrates the build, test, and deployment phases of the Java web application.
- **Containerization:** Docker and Docker Compose containerize Prometheus, Grafana, SonarQube, Nexus Artifactory, and the Java Tomcat application.
- **Monitoring and Visualization:** Prometheus and Grafana monitor system metrics and provide visual insights through customizable dashboards.
- **Code Quality Analysis:** SonarQube conducts static code analysis, ensuring high-quality software development practices.
- **Artifact Management:** Nexus Artifactory serves as a repository manager for storing and distributing build artifacts.
- **Orchestration:** Docker Swarm manages and scales containerized services for enhanced deployment flexibility.
- **Metrics Collection:** Node Exporter collects hardware and OS metrics for comprehensive monitoring.

## Getting Started

Follow these instructions to set up and deploy the CI/CD pipeline environment locally.

### Prerequisites

- Install [VirtualBox](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/).
- Ensure Docker and Docker Compose are installed on your system.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/karnarajbanshi/Java-Tomcat-CI-CD-Pipeline.git
   cd Java-Tomcat-CI-CD-Pipeline.git

2. Provision VMs using Vagrant:
    ```bash
    vagrant up
    
3. Initialize Docker Swarm (optional):
   ```bash
   vagrant ssh slave
   docker swarm init --advertise-addr <slave-ip>

4. Deploy services with Docker Compose:
   ```bash
   docker-compose up -d

5. Access Jenkins at http://192.168.56.6:8080 and complete setup.

## Usage 
- **Configure Jenkins pipelines for automated builds, tests, and deployments.**
- **Access Prometheus at http://192.168.56.7:9090 and Grafana at http://192.168.56.7:3000 for monitoring.**
- **Use SonarQube at http://192.168.56.7:9000 for code quality analysis.**
- **Manage artifacts with Nexus Artifactory at http://192.168.56.7:8081.**
- **Browse the site or webapp at http://192.168.56.6:8083/java-tomcat-maven-example **

## Contributing
Contributions are welcome! Fork the repository and submit a pull request with your enhancements.

## License
This project is licensed under the MIT License - see the LICENSE file for details[here](https://github.com/karnarajbanshi/Java-Tomcat-CI-CD-Pipeline/blob/main/LICENSE.md).

## Acknowledgments
- **Inspired by the need for scalable and efficient CI/CD pipelines.**
- **Thanks to the open-source community for providing invaluable tools and support.**
  
