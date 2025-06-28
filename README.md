# 🚀 Shakib Custom Hosting Panel

This is a PHP-based custom hosting panel by Shakib.  
Made with ❤️ and open for everyone!

## 🔧 Installation

```bash
sudo apt update && sudo apt install -y php mysql-server nginx composer git unzip curl
git clone https://github.com/shakib112/shakib-panel.git
cd shakib-panel
composer install
cp .env.example .env
php artisan key:generate
# Edit .env for DB
php artisan migrate --seed --force
