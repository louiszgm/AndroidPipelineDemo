# Build #

``` shell
docker run --rm -v "$PWD":/project mingc/android-build-box:1.11.1 bash -c 'cd /project; ./gradlew assembleDebug --no-daemon'
```
