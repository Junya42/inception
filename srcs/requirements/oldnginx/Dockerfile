# Creating custom docker image from debian:buster
FROM	debian:buster

ENV DEBIAN_FRONTEND noninteractive

# Installing nginx & openssl

# Notice how we're not running commands with sudo because we get default root access on the container

RUN		apt-get -y update; \
		apt-get -y install nginx; \
		apt-get -y install openssl; \
		openssl req -x509 -nodes -days 365 -subj "/C=FR/ST=IF/O=42/CN=anremiki.42.fr" -addext "subjectAltName=DNS:anremiki.42.fr" -newkey rsa:2048 -keyout /etc/ssl/private/anremiki.42.fr.key -out /etc/ssl/certs/anremiki.42.fr.crt;

# openssl			used to create certificates and keys

# req				specifies a specific certificates/key manager

# -x509				most genereic certificates / key manager

# -nodes			DES is a encryption algorithm, by specifying
#					-nodes we are asking openssl to not secure the certificate with a password
#					to allow further use by nginx without user intervention

# -days365			set a lenght for the certificate to be considered valid

# -subj				After generating the key, the CSR (Certificate Signing Request)
#					will ask for different informations such as "Country/ State/ Organisation/ Company name/ ..."
#					therefore forcing user interaction
#					-subj allows to specify all those informations and provide them beforehand to
#					automatically fullfil the CSR

# -addext			Add a specific exntesion to the certificate if using x509
#					in this case we are specifying the subjectAltName which allow user
#					to specify additional host names. In our case, make our website accessible by typing
#					"login.42.fr" in addition to the classic "localhost"

# -newkey rsa:2048	Creating the key, using the RSA crypting algorithm, neccessary to valided the certificate.
#					The key will be 2048 bits long

# -keyout			We are telling openssl where to place the generated private key file we just created

# -out				Same as -keyout but for the certificate

COPY	./nginx.conf /etc/nginx/nginx.conf

#COPY		copying local file "./nginx.conf" to "/etc/nginx/nginx.conf" in our container

EXPOSE	443

#EXPOSE		open port 443

CMD 	["/usr/sbin/nginx", "-g", "daemon off;"]
