# Task 01: Run Jenkins in Docker

## Description
Run Jenkins inside a **Docker container** and access the UI locally.

## Expected outcome
Jenkins is up and running in Docker and ready for job creation.

## Approach
- Created a `docker-compose.yml` to run Jenkins with a persistent `jenkins_home` volume.
- Exposed Jenkins UI on port `8080`.
- Wrote a helper script to fetch admin password.
- Verifiedg setup in Jenkins UI, installed plugins etc.