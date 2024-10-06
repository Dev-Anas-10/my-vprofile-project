# Use the official Nginx image as the base
FROM nginx

# Optional: Adding labels for metadata
LABEL Name="Anas"
LABEL project="vprofile"

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file to the container
COPY nginvproapp.conf /etc/nginx/nginvproapp.conf

# Expose the default Nginx port
EXPOSE 80
