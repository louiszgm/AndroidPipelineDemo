#!/bin/bash

echo "Upload Apk $1"
curl -F "file=@$1" \
-F "uKey=476bf332dd7fd56f39621e2f34150643" \
-F "_api_key=56c3943fcc20fe8788918a0a0695ef0a" \
https://www.pgyer.com/apiv1/app/upload
