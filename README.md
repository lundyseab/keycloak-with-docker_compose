### Keycloak with docker compose and Nginx as Reverse proxy
## Requirement 
You must have installed:
- Docker with docker compose plugin
- and Nginx
## Noted 
If you want to used it with <code>your own domain name</code>, you must change <code>hostname</code> of keycloak in <code>compose.yml</code> to your own domain first before runnning.
## Get Started
You can used to this Keycloak with docker compose by make sure that <code>Dockerfile</code> and <code>compose.yml</code> is stay on the same folder before run command:
```bash 
docker compose up --build -d
```
## Finally 
You must configure a nginx reverse proxy using file in folder <code>nginx-revers-proxy</code> by copy it to folder <code>/etc/nginx/conf.d/</code> 
And you must configure to HTTPS with your custom domain. Example by using certbot:
#Install
```bash
sudo apt install certbot python3-certbot-nginx
```
# Request HTTPS for your domain name
```bash
sudo certbot --nginx -d <your-domain-name>
```
## Thank You!
