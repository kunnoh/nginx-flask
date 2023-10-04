# nginx-flask docker-compose with let's encrypt

## Turning it on

**Start application**
```sh
sudo make compose-start
```
<p style="text-align: center;">
 🎉 Your web-app should now be running online with HTTPS 🎉   
</p>

**All commands**

```console
% make help
Usage: make [TARGET ...]

help            Show this help menu
compose-stop         Stop docker-compose.yml (might need sudo)
compose-start        Start docker-compose.yml (might need sudo)
docker-start-local  Start docker for local dev (w/o nginx)
```