# 🚀 Free Deployment Guide for DevMetrics

This guide will help you deploy your DevMetrics website completely for free using Vercel (frontend) and Railway (backend).

## 📋 Prerequisites

1. **GitHub Account** - Free
2. **Vercel Account** - Free (no credit card required)
3. **Railway Account** - Free (no credit card required)

## 🎯 Deployment Steps

### Step 1: Prepare Your Repository

1. **Push your code to GitHub** (if not already done):
   ```bash
   git add .
   git commit -m "Prepare for deployment"
   git push origin main
   ```

### Step 2: Deploy Backend to Railway

1. **Go to [Railway.app](https://railway.app)**
2. **Sign up with GitHub** (no credit card required)
3. **Click "New Project"**
4. **Select "Deploy from GitHub repo"**
5. **Choose your DevMetrics repository**
6. **Set the root directory to `/server`**
7. **Add Environment Variables:**
   - `PORT` = `5000`
   - `NODE_ENV` = `production`
   - Add your API keys (Google AI, OpenAI, etc.)

8. **Deploy!** Railway will give you a URL like: `https://your-app-name.railway.app`

### Step 3: Deploy Frontend to Vercel

1. **Go to [Vercel.com](https://vercel.com)**
2. **Sign up with GitHub** (no credit card required)
3. **Click "New Project"**
4. **Import your GitHub repository**
5. **Configure the project:**
   - **Framework Preset:** Create React App
   - **Root Directory:** `client`
   - **Build Command:** `npm run build`
   - **Output Directory:** `build`

6. **Add Environment Variable:**
   - **Name:** `REACT_APP_API_URL`
   - **Value:** Your Railway backend URL (e.g., `https://your-app-name.railway.app`)

7. **Deploy!** Vercel will give you a URL like: `https://your-app-name.vercel.app`

## 🔧 Environment Variables Setup

### Backend (Railway) Environment Variables:
```
PORT=5000
NODE_ENV=production
GOOGLE_API_KEY=your_google_ai_key
OPENAI_API_KEY=your_openai_key
```

### Frontend (Vercel) Environment Variables:
```
REACT_APP_API_URL=https://your-railway-app-url.railway.app
```

## 🎉 Your Website is Live!

- **Frontend:** `https://your-app-name.vercel.app`
- **Backend:** `https://your-app-name.railway.app`

## 🔄 Automatic Deployments

Both Vercel and Railway will automatically redeploy when you push changes to your GitHub repository!

## 💰 Cost Breakdown

- **Vercel:** Completely free tier
- **Railway:** Free tier with $5 monthly credit (no credit card required for signup)
- **Total Cost:** $0

## 🛠️ Troubleshooting

### Common Issues:

1. **CORS Errors:**
   - Make sure your backend URL is correct in the frontend environment variable
   - Check that CORS is properly configured in your Express server

2. **Build Failures:**
   - Check that all dependencies are in package.json
   - Ensure Node.js version compatibility

3. **API Errors:**
   - Verify all environment variables are set correctly
   - Check that your API keys are valid

### Need Help?

- **Vercel Docs:** https://vercel.com/docs
- **Railway Docs:** https://docs.railway.app
- **GitHub Issues:** Create an issue in your repository

## 🚀 Alternative Free Options

If Railway doesn't work for you, try these alternatives:

1. **Render.com** - Free tier available
2. **Cyclic.sh** - Free tier available
3. **Heroku** - Free tier (limited but available)

All of these options require no credit card and are completely free! 