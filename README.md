# opendkim-docker

```shell
mkdir -p ./opendkim
sudo chown -R "1000:1000" ./opendkim

sudo docker build -t aoirint/opendkim .

sudo docker run --rm -v "./opendkim:/opendkim" -v "./certs:/certs" aoirint/opendkim
```
