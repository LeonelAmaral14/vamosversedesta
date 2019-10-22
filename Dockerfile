#Dockerfile for PHP 5.6/7.0/7.1 using nginx as webserver.
FROM php:7.1-fpm

#Copy files ad directories from the application 
ONBUILD COPY . /home/leonel/Desktop/cloneAPI/vamosversedesta

# Tell Docker we are going to use this port
EXPOSE 5000

#run the application
CMD ["php", "-S", "8080:5000", "-t", "."]
