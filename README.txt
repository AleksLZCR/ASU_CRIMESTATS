ASU_CRIMESTATS Project Setup
Overview
This README provides detailed instructions for setting up and running the ASU_CRIMESTATS project, which includes a PostgreSQL database running in a Docker container. Follow these instructions to set up your development environment.
Prerequisites
Before proceeding, ensure you have the following installed:
	•	Git: For cloning the repository and version control.
	•	Docker: For running the PostgreSQL database in a containerized environment.
Installing Docker
Docker is a containerization platform that allows you to easily run applications and databases in isolated environments. Follow these steps to install Docker:
	•	Download Docker:
	◦	For Windows and Mac: Download Docker Desktop from Docker Hub.
	◦	For Linux: Follow the official Docker installation guide for your Linux distribution.
	•	Install Docker:
	◦	Run the downloaded installer and follow the on-screen instructions.
	•	Verify Installation:
	◦	Open a terminal or command prompt.
	◦	Run docker --version to verify that Docker is installed.
Setting Up the Project
	•	Clone the Repository:
git clone [REPOSITORY_URL]
cd ASU_CRIMESTATS

	•	Replace [REPOSITORY_URL] with the URL of your Git repository.
	•	Starting the PostgreSQL Database with Docker Compose:
	◦	In the project root directory (ASU_CRIMESTATS), you will find a docker-compose.yml file, which is used to run a PostgreSQL database in Docker.
	•	Run Docker Compose:
docker-compose up
	•	
	◦	This command starts the PostgreSQL database as defined in docker-compose.yml. The database_init directory contains SQL scripts that initialize the database schema and data.
	•	Stopping the Database:
	◦	To stop the database, press Ctrl+C in the terminal where Docker Compose is running.
	◦	To remove the containers completely, run docker-compose down.
Connecting to the Database
	•	The database can be accessed at localhost:5432 (or at a different port if you've changed it in the docker-compose.yml).
	•	Use the following default credentials (or as configured in docker-compose.yml):
	◦	Username: postgres
	◦	Password: postgres
Troubleshooting
	•	Port Conflict: If you encounter an error like "port is already allocated", ensure no other PostgreSQL instances are running. Use docker ps to check for running containers and docker stop [CONTAINER_ID_OR_NAME] to stop any conflicting containers.
	•	Docker Issues: If Docker seems unresponsive or encounters networking issues, try restarting Docker through the Docker Desktop interface or with docker restart.
Additional Information
	•	Data Persistence: The pg_data directory in the project root is mapped to the PostgreSQL data directory inside the container, ensuring that your data persists across container restarts.
Getting Help
	•	For more detailed Docker usage instructions, visit the Docker documentation.
	•	If you encounter issues specific to this project setup, please reach out to the project maintainers or consult the project's issue tracker.

