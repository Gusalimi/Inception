sleep 10

if [ -f ./wordpress/wp-config.php ]
then
	echo "wordpress already downloaded"
else

    wp config create	--allow-root \
                        --dbname=$SQL_DATABASE \
                        --dbuser=$SQL_USER \
                        --dbpass=$SQL_PASSWORD \
                        --dbhost=mariadb:3306 --path='/var/www/wordpress'

    wp core install
    wp user create gsaile gsaile@student.42mulhouse.fr --role=author

fi