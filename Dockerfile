FROM java:7
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN echo bouzin
ENV FOO bar
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
