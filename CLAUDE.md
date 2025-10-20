# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Java web application tutorial project for the Humanitec Platform Orchestrator and Score. It demonstrates managing a Java application with containerization and platform deployment tools.

## Architecture

- **Java Web Application**: Maven-based Jakarta Servlet application
- **Single Servlet**: `DemoServlet.java` at `/hello` endpoint that accepts `greets` parameter
- **Containerization**: Multi-stage Docker build with Maven compilation and Tomcat deployment
- **Platform Deployment**: Uses Score specification for service definition and Humanitec for orchestration

## Key Commands

### Build & Development
```bash
# Build Docker image
make build

# Push Docker image to registry
make push

# Direct Maven build (inside container)
mvn clean install
```

### Docker Operations
```bash
# Build image with default tag
docker build -t ghcr.io/humanitec-tutorials/manage-your-java-app:latest .

# Build and push (used in CI)
docker build -t ghcr.io/humanitec-tutorials/manage-your-java-app:latest --push .
```

## Project Structure

- `src/main/java/com/humanitec/tutorials/DemoServlet.java` - Main servlet implementation
- `pom.xml` - Maven configuration for Jakarta Servlet webapp
- `Dockerfile` - Multi-stage build: Maven compilation → Tomcat deployment
- `score.yaml` - Score specification defining service ports and container
- `Makefile` - Build and push targets
- `.env` - Humanitec platform configuration and image registry settings

## Configuration

The application uses:
- **Java 8** target compilation
- **Jakarta Servlet API 6.0.0** (provided scope)
- **Tomcat** as the runtime servlet container
- **Port 8080** for both service exposure and Tomcat default

## Deployment

The application is designed for deployment via:
- Score specification defining service structure
- Humanitec Platform Orchestrator for environment management
- Container registry at `docker.io/thevestedleopard/manage-your-java-app`
- to memorize
- to memorize
- to memorize