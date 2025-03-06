# Use Java 17
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Download Lavalink.jar from official source
RUN curl -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar

# Expose Lavalink port
EXPOSE 2333

# Run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
