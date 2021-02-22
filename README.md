# robonomics-utils  

## Build  
```bash
docker build . -t c29r3/robonomics-node \
&& docker push c29r3/robonomics-node:latest
```

## Run  
```bash
docker rm -f robonomics; \
rm -rf ~/robonomics; \
docker pull c29r3/robonomics-node; \
docker run -dit --name robonomics \
--network host \
--volume /root/robonomics:/root/.local/share/robonomics \
--restart=always c29r3/robonomics-node:latest \
/usr/local/bin/robonomics --parachain-id 1000 --rpc-cors all --name "<NICKNAME>-1 | <YOUR_ADDRESS>"; \
docker logs -f robonomics
```
