## About Application

- Name - Manager red bill.
- Language - Laravel 5.8.
- Database - MySQL.

## Setting

- **[XAMPP](https://www.apachefriends.org/download.html)**
- **[Composer](https://getcomposer.org/)**
- run cmd <code>$ composer global require laravel/installer</code>
- Clone source to <code>'~\xampp\htdocs\'</code>
- Create file .env in root source
```
APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:3/FskD+yLyrsbKiysiR9rEiIJ62doRdoSPLL9bjx+bQ=
APP_DEBUG=true
APP_URL=http://localhost

LOG_CHANNEL=stack

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=homestead
DB_USERNAME=homestead
DB_PASSWORD=secret

BROADCAST_DRIVER=log
CACHE_DRIVER=file
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_DRIVER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_APP_CLUSTER=mt1

MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"
```
- run <code>$ composer update</code> at root application
- run <code>$ php artisan serve</code> at root application
- access <code>http://localhost:8000/</code>

## Config server
- add code to file <code>'~\xampp\apache\conf\extra\httpd-vhosts.conf'</code>   
```
    <VirtualHost hoadondientu.com>
        DocumentRoot "E:/caidat/xampp/htdocs/thue/public"
        ServerName hoadondientu.com
        ServerAlias hoadondientu.com
        <Directory "E:/caidat/xampp/htdocs/thue/public">
            Order allow,deny
            Allow from all
        </Directory>
    </VirtualHost>
```
 - add code to file <code>'C:\Windows\System32\drivers\etc'</code>
```
    127.0.0.1 hoadondientu.com
```
 - access <code>http://hoadondientu.com/</code>
 ## Config database
 - Change file <code>.env</code> 
 ```
 DB_CONNECTION=mysql
 DB_HOST=127.0.0.1
 DB_PORT=3306
 DB_DATABASE=thueso
 DB_USERNAME=root
 DB_PASSWORD=
 ```
 - Create proc GetAllInvoices()
```
DELIMITER //
 CREATE PROCEDURE GetAllInvoices()
   BEGIN
   SELECT *  FROM invoices;
   END //GetAllInvoicesGetAllInvoices
 DELIMITER ;
```
 - Access [hoadondientu.com/invoices](http://hoadondientu.com/invoices)
 - Demo code at file <code>~/app/Http/Controllers/Controller</code>
 