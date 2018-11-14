
#!/bin/bash



docker login -u gitlab-ci-token -p $CI_BUILD_TOKEN "${DOCKER_REGISTRY}"

docker build --build-arg TARGET_FILE="$TARGET_FILE" --build-arg JVM_OPTIONS="$JVM_OPTIONS" -t "${DOCKER_REGISTRY}/${DOCKER_PATH}:$RELEASE_VERSION" "$DOCKER_DIR"
docker push "${DOCKER_REGISTRY}/${DOCKER_PATH}:$RELEASE_VERSION"

