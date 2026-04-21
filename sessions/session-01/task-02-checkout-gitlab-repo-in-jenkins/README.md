# Task 02: Checkout from GitLab (inside Docker)

## Description
Configure Jenkins (running in Docker) to checkout a simple spring boot app.
## Expected Outcome
Code is successfully pulled into the Docker-based Jenkins workspace.
## Approach
- Created a simple [Spring Boot demo app](https://github.com/Quashed/hello-demo).
- Configured Github credentials using personal access token in Jenkins UI.
- Added repository checkout stage in pipeline.
- SCM checkout from inside Docker-based Jenkins.