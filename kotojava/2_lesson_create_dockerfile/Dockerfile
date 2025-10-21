FROM ubuntu:22.04
RUN apt update
RUN apt install -y curl
RUN curl https://raw.githubusercontent.com/v-domariev/tutorial-docker/refs/heads/main/kotojava/2_lesson_create_dockerfile/HelloWorld.java -o Main.java
RUN apt install -y openjdk-8-jdk
RUN javac Main.java
RUN java Main > log.txt
