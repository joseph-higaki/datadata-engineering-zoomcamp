# Docker

## Running Docker 
I don't have Docker installed in my Win local laptop
So will try to run docker from the codespace 

After I get to setup a postgre docker image, then I can try to run that image in a locally hosted docker 

```bash
docker info 
```
![docker info](../../_resources/01%2002%20docker%20info%20codebase.png)

Build an image
```
docker build -f ./PythonDockerfile -t test-python .
```

List Docker Images

```
docker images
``` 
![alt text](image.png)

Run newly created Docker Image
```
docker run -it test-python
``` 
![alt text](image-1.png)

```
docker ps -a
```
![alt text](image-2.png)


```
docker run -it test-python firstArg secondArg
```


**NEXT DO DOCKER DATA PIPELINE**

**DO WITH LOCAL DOCKER?**