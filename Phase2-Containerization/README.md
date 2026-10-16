# Phase 2: Containerize the Application and Push to Amazon ECR

## Objective
Containerize the ZeetaFin application (Frontend + Backend), test the containers locally, and push the images to Amazon Elastic Container Registry (ECR).

## What Was Done

- Created production-ready Dockerfiles for both Frontend and Backend
- Created `.dockerignore` files
- Built Docker images locally
- Ran and tested the containers
- Added PostgreSQL container so the Backend can start successfully
- Pushed images to Amazon ECR

## Application Details

 Component    Technology      Port 
 Frontend     Next.js         3000 
 Backend     NestJS        3001 
 Database    PostgreSQL 15 5432 

## How to Build & Run Locally

### Backend
  bash
cd Backend
docker build -t zeetafin-backend:latest .
docker run -d -p 81:3001 --name zeetafin-backend zeetafin-backend:latest

cd Frontend
docker build -t zeetafin-frontend:latest .
docker run -d -p 80:3000 --name zeetafin-frontend zeetafin-frontend:latest
