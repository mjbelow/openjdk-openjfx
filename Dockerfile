FROM eclipse-temurin:11.0.12_7-jdk-focal

RUN apt update && apt -y install libgtk-3-0
RUN mkdir -p /opt/java/javafx-sdk-11.0.2
COPY openjfx-11.0.2_linux-x64_bin-sdk/javafx-sdk-11.0.2 /opt/java/javafx-sdk-11.0.2
ENV PATH_TO_FX=/opt/java/javafx-sdk-11.0.2/lib
