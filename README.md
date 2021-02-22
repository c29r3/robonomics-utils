# robonomics-utils  

## Build  
```bash
DOCKER_HUB_NICKNAME="12345" \
&& docker build . -t $DOCKER_HUB_NICKNAME/robonomics-node \
&& docker push $DOCKER_HUB_NICKNAME/robonomics-node:latest
```

## Run  
```bash
docker rm -f robonomics; \
rm -rf ~/robonomics; \
docker pull $DOCKER_HUB_NICKNAME/robonomics-node; \
docker run -dit --name robonomics \
--network host \
--volume /root/robonomics:/root/.local/share/robonomics \
--restart=always $DOCKER_HUB_NICKNAME/robonomics-node:latest \
/usr/local/bin/robonomics --parachain-id 1000 --rpc-cors all --name "<NICKNAME>-1 | <YOUR_ADDRESS>"; \
docker logs -f robonomics
```
