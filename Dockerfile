FROM jenkins/agent:jdk17
USER root
RUN apt-get update && apt-get install -y python3 python3-pip && rm -rf /var/lib/apt/lists/*
USER jenkins

