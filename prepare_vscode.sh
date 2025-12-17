#!/usr/bin/env bash
set -e
echo "Starting Final Stability Prepare Script..."

# 1. تعريف هوية البرنامج (Alkemi)
export APP_NAME="Alkemi"
export APP_NAME_LC="alkemi"
export BINARY_NAME="alkemi"
export GH_REPO_PATH="Karlmarl1990/Alkemi-IDE"
export ORG_NAME="Alkemi"
export TUNNEL_APP_NAME="alkemi-tunnel"

# 2. تثبيت TypeScript والمكتبات المفقودة التي عطلت البناء سابقاً
echo "Fixing missing dependencies..."
npm install -g typescript
npm install --save-dev @webgpu/types @types/trusted-types @types/wicg-file-system-access

# 3. إعداد بيئة الذاكرة لتجنب الانهيار أثناء التجميع
export NODE_OPTIONS="--max-old-space-size=8192"

echo "Dependencies installed. Launching build process..."
