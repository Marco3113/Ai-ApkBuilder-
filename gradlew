#!/bin/sh
# Minimal gradlew stub — GitHub Actions uses its own Gradle via setup-android
# Replace this file with a real Gradle wrapper if building locally:
# Run: gradle wrapper --gradle-version=8.7 in the project root

if [ -z "$GRADLE_HOME" ]; then
  exec gradle "$@"
else
  exec "$GRADLE_HOME/bin/gradle" "$@"
fi
