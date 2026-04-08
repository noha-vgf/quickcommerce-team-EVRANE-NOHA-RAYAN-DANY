#!/bin/bash
echo "Checking all services..."
curl http://localhost:3001/health
curl http://localhost:3002/health
curl http://localhost:3003/health

# Commit
git add check-health.sh
git commit -m "feat: add health check script for all services"
git push origin feature/health-all
