# Inception

## Summary

This document outlines a System Administration exercise focusing on Docker.
Version: 1.3

## Contents

I. [Preamble](#preamble)
II. [Introduction](#introduction)
III. [General Guidelines](#general-guidelines)
IV. [Mandatory Part](#mandatory-part)
V. [Bonus Part](#bonus-part)
VI. [Submission and Peer-Evaluation](#submission-and-peer-evaluation)

## Chapter I - Preamble

## Chapter II - Introduction

This project aims to enhance my system administration knowledge by utilizing Docker.

## Chapter III - General Guidelines

- The project must be completed within a virtual machine.
- All configuration files must be placed in a `srcs` folder.
- A `Makefile` at the root of the directory is required to set up the application, including building Docker images using `docker-compose.yml`.
- Extensive documentation reading and research on Docker usage are recommended to tackle unfamiliar concepts.

## Chapter IV - Mandatory Part

This project involves setting up an infrastructure of different services within a virtual machine using Docker Compose. The key requirements include:

- Naming Docker images after their corresponding services.
- Running each service in a dedicated container.
- Building Docker images using your own Dockerfiles (excluding ready-made images and DockerHub services).
- Setting up specific containers, including NGINX with TLSv1.2 or TLSv1.3, WordPress + php-fpm, MariaDB, and volumes for database and website files.
- Establishing a Docker network to connect the containers.
- Ensuring containers restart in case of crashes.
