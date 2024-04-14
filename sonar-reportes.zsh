# Alias para hacer los reportes de sonar

alias sonar-contri="docker run --rm --network=host \
    -e SONAR_HOST_URL="http://localhost:9000" \
    -e SONAR_SCANNER_OPTS="-Dsonar.projectKey=contribuyente-frontend" \
    -e SONAR_TOKEN="sqp_3eb7905ba6c243890682b57d2680612ea504024d" \
    -v "/Users/mac/GNL/contribuyente-ui/src:/usr/src" \
    sonarsource/sonar-scanner-cli"

alias sonar-oc="docker run --rm --network=host \
    -e SONAR_HOST_URL="http://localhost:9000" \
    -e SONAR_SCANNER_OPTS="-Dsonar.projectKey=opinion-cumplimiento-frontend" \
    -e SONAR_TOKEN="sqp_af8e29b0b1b8765293c3bf3f547310d4c8e3e649" \
    -v "/Users/mac/GNL/portal-funcionario/opinion-cumplimiento-ui:/usr/src" \
    sonarsource/sonar-scanner-cli"

alias sonar-fe="docker run --rm  --network=host \
    -e SONAR_HOST_URL="http://localhost:9000" \
    -e SONAR_SCANNER_OPTS="-Dsonar.projectKey=firma-electronica-frontend" \
    -e SONAR_TOKEN="sqp_77e2936cd707673aa6622162cc397022278d7b9b" \
    -v "/Users/mac/GNL/portal-funcionario/firma-electronica-ui:/usr/src" \
    sonarsource/sonar-scanner-cli"

alias sonar-ms-oc="cd /Users/mac/GNL/ocfe/microservicios/opinion-cumplimiento \
    && mvn clean verify sonar:sonar -Dsonar.login="admin" -Dsonar.password="Admin""

alias sonar-ms-fe="cd /Users/mac/GNL/ocfe/microservicios/firma-electronica \
    && mvn clean verify sonar:sonar -Dsonar.login="admin" -Dsonar.password="Admin""

alias sonar-ms-comunes="cd /Users/mac/GNL/ocfe/microservicios/comunes \
    && mvn clean verify sonar:sonar -Dsonar.login="admin" -Dsonar.password="Admin""
