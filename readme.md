## About Application

- Name - Manager red bill.
- Language - Laravel 5.8.
- Database - MySQL.

## Setting

- **[XAMPP](https://www.apachefriends.org/download.html)**
- **[Composer](https://getcomposer.org/)**
- run cmd <code>$ composer global require laravel/installer</code>
- Clone source to <code>'~\xampp\htdocs\'</code>
- run <code>$ composer update</code> at root application
- run <code>$ php artisan serve</code> at root application
- access <code>http://localhost:8000/</code>

## config server
- add code to file <code>'~\xampp\apache\conf\extra\httpd-vhosts.conf'</code>   
    <pre>
        < VirtualHost hoadondientu.com>
        	DocumentRoot "E:/caidat/xampp/htdocs/thue/public"
        	ServerName hoadondientu.com
        	ServerAlias hoadondientu.com
            < Directory "E:/caidat/xampp/htdocs/thue/public">
                Order allow,deny
                Allow from all
            </ Directory>
        </ VirtualHost>
    </pre>
 
 - add code to file <code>'C:\Windows\System32\drivers\etc'</code>
    <pre>
        127.0.0.1 hoadondientu.com
    </pre>
 - access <code>http://hoadondientu.com/</code>
 