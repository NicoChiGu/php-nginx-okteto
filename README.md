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
| WEB_NGINX_SERVERNAME | `DOMAIN` | Proxy DOMAIN |

### If you change nginx setting. see repo [./nginx/*.conf](./nginx)
### Okteto directly connect containers using container names

<br>

#### **Exp: ./nginx/my_server_block.conf **
#### `fastcgi_pass php:9000;` Where `php` is the container name

<br>

## How to upload your web file
> 1. access filebrowser and Login <br>
> ![1680164792945](https://user-images.githubusercontent.com/34607782/228776313-7ece6902-70f7-42a0-a67a-bd9455eeed3f.png)

> 2. setting command <br>
> ![image](https://user-images.githubusercontent.com/34607782/228777186-e96d6411-a870-4042-a642-c2cb02e701df.png)
> input some command. Exp: `wget tar zip unzip ls chmod chown`

> 3. access /app folder and "toogle shell"
> ![image](https://user-images.githubusercontent.com/34607782/228778348-5e4a28fe-f6e1-4d43-975a-ce665412ad0d.png)

> 4. use command to download file (Why use commands? "Because prevents of abuse, if you use the user upload method, it will interrupt the connection at certain times.")  
> Run `wget -c #download_url --limit-rate=1m -b`  
> (-c Continuation / -b Background_Execution / --limit-rate=1m Exceeding this limit may cause the service provider to disconnect)

> 5. wait a moment to download / use tar or unzip to decompression.
