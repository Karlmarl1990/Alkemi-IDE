#!/usr/bin/env bash
set -e
echo "Starting Optimized Prepare Script..."

# 1. ضبط المتغيرات الأساسية للهوية
export APP_NAME="Alkemi"
export APP_NAME_LC="alkemi"
export BINARY_NAME="alkemi"
export GH_REPO_PATH="Karlmarl1990/Alkemi-IDE"
export ORG_NAME="Alkemi"
export TUNNEL_APP_NAME="alkemi-tunnel"

# 2. تثبيت المكتبات الثلاثة التي تسببت في الخطأ الأخير
echo "Installing missing type definitions..."
npm install --save-dev @webgpu/types @types/trusted-types @types/wicg-file-system-access

# 3. محاولة تجاوز فحص الأنواع الصارم لتسريع البناء
export NODE_OPTIONS="--max-old-space-size=8192"
echo "Variables set and specific types installed. Proceeding..."
