# nginx-flask docker-compose with let's encrypt

## Clone and setup environment
```sh
git clone https://github.com/kunnoh/nginx-flask.git
```
got to folder 
```sh
cd nginx-flask
```

## Operate the system

**All commands**

```console
% make help
Usage: make [TARGET ...]

help            Show this help menu
compose-stop         Stop docker-compose.yml (might need sudo)
compose-start        Start docker-compose.yml (might need sudo)
compose-start-local  Start docker for local dev (w/o nginx)
```

**Start application**
```sh
sudo make compose-start
```
Your web-app should now be running online with HTTPS

**Start application locally**
```sh
sudo make compose-start-local
```
Your web-app should now be running without nginx.