FROM eclipse-temurin:11.0.12_7-jdk-focal

# Graphical library if running from this image
RUN apt update && apt -y install libgtk-3-0

# JavaFX SDK to build/run JavaFX application
RUN mkdir -p /opt/java/javafx-sdk-11.0.2
COPY openjfx-11.0.2_linux-x64_bin-sdk/javafx-sdk-11.0.2 /opt/java/javafx-sdk-11.0.2
ENV PATH_TO_FX=/opt/java/javafx-sdk-11.0.2/lib

# JavaFX jmods to create a custom JRE
RUN mkdir -p /opt/java/javafx-jmods-11.0.2
COPY openjfx-11.0.2_linux-x64_bin-jmods/javafx-jmods-11.0.2 /opt/java/javafx-jmods-11.0.2
ENV PATH_TO_FX_JMOD=/opt/java/javafx-jmods-11.0.2
