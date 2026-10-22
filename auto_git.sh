#!/bin/bash
git add .
git commit -m "Automated update: $(date)"
git push origin main
echo "Successfully pushed to GitHub!"
