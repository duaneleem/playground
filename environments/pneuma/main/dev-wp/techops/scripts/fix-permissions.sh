# WordPress Themes/Plugins Docker Container permissions.
docker exec pneuma-wp-dev bash -c 'chown -R www-data:www-data /var/www/html/wp-content'

# Programming Projects
sudo chown -R $USER:$USER ../../artifacts/wp-content/plugins/barbschwarz-education-plugin


