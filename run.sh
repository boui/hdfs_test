#!/bin/bash

VERSION="0.1-SNAPSHOT"
BASE_DIR="."

TARGET_DIR="$BASE_DIR/target/scala-2.10/"

JAR_NAME="hdfs_test-assembly-${VERSION}"

APP_JAR_PATH="$TARGET_DIR/${JAR_NAME}.jar"

JOB_NAME="$1"
shift


exec hadoop jar "$APP_JAR_PATH" "$JOB_NAME" --hdfs "$@"
 
