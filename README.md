# Docker Compose Examples

This repository contains a collection of Docker Compose examples for various use cases. Follow the instructions below to get started.

## How to Use

1. **Copy the Environment File**
    - Duplicate the `.env.dist` file to create a new `.env` file:
      ```bash
      cp .env.dist .env
      ```

2. **Set Up Your Settings**
    - Open the `.env` file and configure your settings as needed.
    - Ensure you set a unique value for `PROJECT` (project name) to avoid conflicts:
      ```env
      PROJECT=my_project_name
      ```

3. **Start the Project**
    - Run the `up.sh` script to start the Docker Compose setup:
      ```bash
      ./up.sh
      ```

4. **Remove the Project**
    - If you need to stop and remove the containers, volumes, and networks, run the `remove.sh` script:
      ```bash
      ./remove.sh
      ```

## Repository Structure
Each folder in this repository contains a specific Docker Compose example with its own `docker-compose.yml` file and related configuration files. You can explore these examples to suit your use case.

## Notes
- Ensure you have Docker and Docker Compose installed on your system.
- Always configure the `.env` file before running any scripts to avoid unexpected behavior.

## Contributing
If you have additional Docker Compose examples to share, feel free to create a pull request. Contributions are welcome!

