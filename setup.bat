@echo off
chcp 65001 >nul
echo === ЛПР 8, вариант 21: установка ===
if not exist .env copy .env.example .env >nul
call composer install --no-interaction
if errorlevel 1 goto err
php artisan key:generate --force
php artisan config:clear
echo.
echo Сейчас откроется .env: впишите LAB_STUDENT, LAB_SLUG, LAB_GROUP, LAB_CODE и APP_NAME. Сохраните файл.
notepad .env
echo.
echo Запуск: откройте http://127.0.0.1:8121
php artisan serve --port=8121
goto :eof
:err
echo ОШИБКА: composer не найден или не сработал. Запускайте из консоли OSPanel.
pause
