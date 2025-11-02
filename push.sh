#!/bin/bash

# Script to add, commit, and push changes to GitHub

echo "🔄 Adding all changes..."
git add .

echo "📝 Enter commit message (or press Enter for default):"
read -r commit_message

if [ -z "$commit_message" ]; then
    commit_message="Update portfolio website"
fi

echo "💾 Committing changes..."
git commit -m "$commit_message"

echo "🚀 Pushing to GitHub..."
git push

if [ $? -eq 0 ]; then
    echo "✅ Successfully pushed to GitHub!"
else
    echo "❌ Failed to push. Make sure you have:"
    echo "   1. Created a GitHub repository"
    echo "   2. Added it as remote: git remote add origin <your-repo-url>"
    echo "   3. Pushed at least once: git push -u origin main"
fi

