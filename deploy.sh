#!/bin/bash

echo "🚀 DevMetrics Deployment Script"
echo "================================"

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git repository not found. Please initialize git first:"
    echo "   git init"
    echo "   git add ."
    echo "   git commit -m 'Initial commit'"
    echo "   git remote add origin YOUR_GITHUB_REPO_URL"
    echo "   git push -u origin main"
    exit 1
fi

# Check if changes need to be committed
if [ -n "$(git status --porcelain)" ]; then
    echo "📝 Changes detected. Committing changes..."
    git add .
    git commit -m "Prepare for deployment"
fi

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push origin main

echo ""
echo "✅ Code pushed to GitHub successfully!"
echo ""
echo "🎯 Next Steps:"
echo "1. Go to https://railway.app and deploy your backend"
echo "2. Go to https://vercel.com and deploy your frontend"
echo "3. Follow the detailed instructions in DEPLOYMENT.md"
echo ""
echo "📖 For detailed instructions, see: DEPLOYMENT.md" 