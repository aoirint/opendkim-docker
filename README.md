# opendkim-docker

```shell
mkdir -p ./opendkim ./certs
sudo chown -R "1000:1000" ./opendkim ./certs

sudo docker build -t aoirint/opendkim .

sudo docker run --rm -v "./opendkim:/opendkim" -v "./certs:/certs" aoirint/opendkim
```
