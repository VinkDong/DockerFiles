# VinkBuild -- C

- build C program with docker 

- for example

```
docker run -ti -v $(pwd)/result:/result -v /Users/Vink/github/fluent-bit:/fluent-bit -v $(pwd)/run.sh:/run.sh hand/builder:c /run.sh
```