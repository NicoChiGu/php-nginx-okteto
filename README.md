# Simple Run PHP+NGINX On [OKTETO](https://okteto.com) <a href="https://okteto.com"><img src="https://avatars.githubusercontent.com/u/39767798?s=50&v=1"></a>
This **PHP+NGINX+FileBrowser** Run on **OKTETO** repo. You can fork this repo to change some code.

FREE USER can not use **customDomain**. so i add **cloudflare Tunnel** in this repo.  //you can modify other proxy service providers here. such as Ngrok

If you want your container to run continuously. you need to visit the endpoint url given to you by okteto at regular intervals. //Okteto states that it will force a rebuild within 24 hours


## The following are preset variables

| Key | Sample Value | Info |
|:---------|:---------|:---------|
| FILE_USER | `admin` | FILEBROWSER USERNAME |
| FILE_PASSWORD | `admin` | FILEBROWSER USER PASSWROD |
| CF_TOKEN | `##longcode` | [Register/Login](https://one.dash.cloudflare.com) CloudflareTunnel |
| PHP_VERSION | `8.1-debian-11` | PHP VERSION /See on [DockerHub](https://hub.docker.com/r/bitnami/php-fpm/tags) |
| DATA_SIZE | `5Gi` | Free User Max 5Gi |

### If you change nginx setting. see repo ./nginx/*.conf
### Okteto directly connect containers using container names
<br>
<br>
#### **Exp: ./nginx/my_server_block.conf **

#### `fastcgi_pass php:9000;` Where `php` is the container name
