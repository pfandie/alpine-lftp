# alpine-lftp
alpine container with lftp for those awful ftp-deployments

## usage

```bash
docker build -t lftp-alpine .
docker run --rm -td -v "${PWD}":/var/upload lftp-alpine
lftp -e "open FTP_SERVER; user USER PASSWORD; put dummy_file.txt; bye"
```
