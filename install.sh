#!/bin/bash

echo "🚀 Shakib Panel Installer"

# 1. Update & install packages
apt update && apt upgrade -y
apt install -y php php-fpm php-mysql php-cli php-mbstring php-xml php-curl php-bcmath unzip git nginx mysql-server curl

# 2. Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# 3. Clone repo (optional)
# git clone https://github.com/shakib112/shakib-panel.git
# cd shakib-panel

# 4. Set permissions
chown -R www-data:www-data .
chmod -R 755 storage bootstrap/cache

# 5. Install dependencies
composer install --no-dev --optimize-autoloader
cp .env.example .env
php artisan key:generate

echo "✅ Now configure your .env file, then run:"
echo "php artisan migrate --seed --force"
