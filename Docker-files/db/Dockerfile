# Use the official MySQL 8.0.33 image as the base
FROM mysql:8.0.33

# Optional: Adding labels for metadata
LABEL Name="Anas"
LABEL project="vprofile"

# Set environment variables for MySQL root password, database setup, and user creation
ENV MYSQL_ROOT_PASSWORD=vprodbpass
ENV MYSQL_DATABASE=accounts
#ENV MYSQL_USER=admin
#ENV MYSQL_PASSWORD=admin123

# Copy the SQL script to the Docker container
COPY db_backup.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306
