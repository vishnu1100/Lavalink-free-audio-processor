# Use Java 17
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Download Lavalink.jar from official source
RUN curl -o Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar

# Expose Lavalink port
EXPOSE 2333

# Run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
