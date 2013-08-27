#!/bin/bash
PROJECT_NAME="hdfs_test"
VERSION="0.1-SNAPSHOT"
BASE_DIR="/home/boui/IdeaProjects/${PROJECT_NAME}"

TARGET_DIR="$BASE_DIR/target/scala-2.10/"
JAR_NAME="${PROJECT_NAME}-assembly-${VERSION}"

APP_JAR_PATH="$TARGET_DIR/${JAR_NAME}.jar"

JOB_NAME="$1"
exec ~/Software/hadoop-1.2.1/bin/hadoop jar "$APP_JAR_PATH" "$JOB_NAME" --local --input ./a.txt --output ./b.txt 
 
