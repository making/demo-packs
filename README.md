


## Build droplet

### Staticfile, Ruby, NodeJS, Go, Python, PHP, Binary

```
docker run --rm \
  -v "$(pwd)/app:/workspace" \
  -v "$(pwd)/out:/out" \
  packs/cf:build
```

### Java

```
docker run --rm \
  -v "$(pwd)/app:/workspace" \
  -v "$(pwd)/out:/out" \
  -e PACK_APP_ZIP=/workspace/target/myapp-0.0.1-SNAPSHOT.jar \
  packs/cf:build
```

## Run droplet

```
docker run --rm \
  -p 8080:8080 \
  -v "$(pwd)/out:/workspace" \
  packs/cf:run \
  -droplet droplet.tgz \
  -metadata result.json
```