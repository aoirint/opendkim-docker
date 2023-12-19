# opendkim-docker

```shell
mkdir -p ./volumes/{opendkim_config,opendkim_dkimkeys}
sudo chown -R "1000:1000" ./volumes/opendkim_config
sudo chown -R "101:101" ./volumes/opendkim_dkimkeys

cp template.opendkim.conf ./volumes/opendkim_config/opendkim.conf
touch ./volumes/opendkim_config/KeyTable
touch ./volumes/opendkim_config/SigningTable

sudo docker build -t aoirint/opendkim .

sudo docker run --rm -it -v "./volumes/opendkim_config/opendkim.conf:/etc/opendkim.conf" -v "./volumes/opendkim_config/KeyTable:/etc/opendkim/KeyTable" -v "./volumes/opendkim_config/SigningTable:/etc/opendkim/SigningTable" -v "./volumes/opendkim_dkimkeys:/etc/dkimkeys" -p "127.0.0.1:8891:8891" aoirint/opendkim
```
