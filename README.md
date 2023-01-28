## Rebuilding the image
```
docker build -t kbaylosis/conduit .
```

## Running the image

### Detached mode
```
docker run -it kbaylosis/conduit .
```

### Mounted mode
```
docker run -itv <path on host>:/root/app kbaylosis/conduit
```

NOTE: Paths must be absolute.

### Mounted mode on current directory
```
docker run --network=host -itv `pwd`:/root/app kbaylosis/conduit
```

### Releasing
```
docker build -t kbaylosis/conduit . && docker push kbaylosis/conduit:latest   
```

### Multiplatform Releasing
```
docker buildx build --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag kbaylosis/conduit:buildx-latest .
```