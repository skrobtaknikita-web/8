# Запуск (Windows, OSPanel)
1. Распакуйте архив, например в C:\OSPanel\home\lpr-SLUG
2. Откройте КОНСОЛЬ OSPanel (значок в трее -> Консоль), перейдите в папку:  cd /d C:\OSPanel\home\lpr-SLUG
3. Выполните:  setup.bat
   (скрипт сам: создаст .env, поставит зависимости, сгенерирует APP_KEY, откроет .env для правки, запустит сервер)
4. Откройте http://127.0.0.1:8121
В следующий раз достаточно:  php artisan serve --port=8121

Вручную, если setup.bat не подошёл:
  copy .env.example .env
  composer install
  php artisan key:generate
  php artisan serve --port=8121
