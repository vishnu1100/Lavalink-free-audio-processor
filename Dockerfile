# Use Java 17
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Download Lavalink.jar from the official Lavalink GitHub releases
RUN apt-get update && apt-get install -y curl \
    && curl -sL -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar \
    && chmod +x Lavalink.jar

# Expose Lavalink default port
EXPOSE 2333

# Start Lavalink server
CMD ["java", "-jar", "Lavalink.jar"]
