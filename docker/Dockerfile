# Start with a base image containing Java runtime
FROM openjdk:11-jdk-slim

# Add Maintainer Info
LABEL maintainer="kurzela.kamil@gmail.com"

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=api-gateway.jar

# Add the application's jar to the container
ADD ${JAR_FILE} api-gateway.jar

ADD run.sh run.sh

# Run the jar file
RUN apt-get update && apt-get install -y netcat
RUN chmod +x run.sh
CMD /bin/sh run.sh