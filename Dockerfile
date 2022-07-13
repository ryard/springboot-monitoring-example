FROM openjdk:8-jre-alpine
COPY target/RestServiceDemo-1.0.0-SNAPSHOT.jar /home/root/restservicedemo/
ENV myworkspace /home/root/restservicedemo
WORKDIR ${myworkspace}
EXPOSE 8080
RUN chgrp -R 0 /home/root/restservicedemo && \
    chmod -R g=u /home/root/restservicedemo
USER 1001
ENTRYPOINT ["java", "-jar","RestServiceDemo-1.0.0-SNAPSHOT.jar"]
