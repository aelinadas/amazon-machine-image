# Amazon Machine Image (AMI)

### PROJECT DESCRIPTION
AMI stands for Amazon Machine Image i.e. a special type of virtual appliance that is used to create a virtual machine within the Amazon Elastic Compute Cloud. It serves as the basic unit of deployment for services delivered using EC2.

I have a web application to be deployed to cloud. This repository contain configuration for building Custon API for deploying and running webapp [Bookstore](https://github.com/aelinadas/bookstore)

The AMI is built and made available on the AWS accounts by using CircleCI pipeline. 
The CircleCI pipeline leverages Packer to validate and build AMI.

---

### AMI ARCHITECTURE

<img alt="Architecture" src="https://github.com/aelinadas/amazon-machine-image/blob/main/images/AMI.png" />

---

### AMI CUSTOMIZATION

1. Install Java 8 and Maven using ```java.sh``` shell script
2. Install Tomcat Server using ```tomcat.sh``` shell script
3. Install AWS Cloud Watch using ```cloud-watch.sh``` shell script
4. Install AWS Code Deploy Agent and start it using ```deploy-agent.sh``` shell script

---

### Validate AMI

``` sh packer validate ami.json ```

### Build AMI

``` 
sh packer build
-var 'aws_access_key=REDACTED'
-var 'aws_secret_key=REDACTED'
-var 'aws_region=us-east-1'
-var 'subnet_id=REDACTED'
ami.json 
```