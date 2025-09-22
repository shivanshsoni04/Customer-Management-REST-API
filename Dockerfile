# --------------------------
# Build stage
# --------------------------
FROM eclipse-temurin:21-jdk AS build
WORKDIR /app

# Copy everything
COPY . .

# Make mvnw executable
RUN chmod +x mvnw

# Build the project
RUN ./mvnw -DskipTests clean package

# --------------------------
# Run stage
# --------------------------
FROM eclipse-temurin:21-jre
WORKDIR /app

# Copy the jar from build stage
COPY --from=build /app/target/*.jar app.jar

# Set memory options (optional)
ENV JAVA_TOOL_OPTIONS="-Xms256m -Xmx512m"

# Start the app
CMD ["java", "-jar", "app.jar"]
