FROM alpine:3.17

# Install the package manager (apk) and update
RUN apk update
RUN apk add --no-cache bash

# Update package lists and install Nginx
RUN apk add --no-cache nginx

# Expose port 80 (optional, for web access)
EXPOSE 80

# Specify the command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
