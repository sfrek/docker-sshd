README
======

This is a test/learning to create a docker image to use it in a special _kubernetes pod_.

variables
---------

* **URL\_KEYS**: _github_'s keys url:

```
https://github.com/<user>.keys
```

usage
-----

```
docker run -d --name sshd -e "URL_KEYS=https://github.com/<user>.keys" sfrek/docker-sshd
```