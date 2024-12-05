FROM openjdk:17-jdk-slim

RUN apt-get update && apt-get install -y \
    x11-apps \
    libxext6 \
    libxrender1 \
    libxtst6 \
    libxaw7 \
    libxi6 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /dart5

COPY calc.jar /dart5/calc.jar

CMD ["java", "-jar", "/dart5/calc.jar"]
