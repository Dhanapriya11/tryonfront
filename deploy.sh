#!/bin/bash

echo "🚀 Fashion E-commerce App Deployment Script"
echo "=========================================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install npm first."
    exit 1
fi

echo "✅ Node.js and npm are installed"

# Install dependencies for frontend
echo "📦 Installing frontend dependencies..."
cd "$(dirname "$0")"
npm install

# Install dependencies for backend
echo "📦 Installing backend dependencies..."
cd server
npm install
cd ..

# Build the frontend
echo "🔨 Building frontend..."
npm run build

echo "✅ Build completed successfully!"
echo ""
echo "📋 Next Steps:"
echo "1. Set up MongoDB Atlas database"
echo "2. Deploy backend to Railway/Render"
echo "3. Deploy frontend to Vercel"
echo "4. Configure environment variables"
echo ""
echo "📖 See DEPLOYMENT.md for detailed instructions" 