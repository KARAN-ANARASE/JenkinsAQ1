# Use official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy source code
COPY HelloWorld.java .

# Compile the Java program
RUN javac HelloWorld.java

# Run the program
CMD ["java", "HelloWorld"]

