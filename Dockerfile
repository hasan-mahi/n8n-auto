# Use official n8n image
FROM n8nio/n8n

# Set timezone
ENV TZ=Asia/Dubai

# Basic Auth (render will override with ENV if set there)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Use files for config storage
ENV N8N_DISABLE_PRODUCTION_MAIN_PROCESS=true

# Expose port used by n8n
EXPOSE 5678

# Command to start n8n
ENTRYPOINT ["n8n"]
