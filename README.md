# [git.io/acme.sh](https://git.io/acme.sh)

## 1. Default installation

```
curl https://git.io/acme.sh | sh
```

or

```
wget -O- https://git.io/acme.sh | sh
```

## 2. Advanced installation

```
curl https://git.io/acme.sh | sh -s - \
  --home ~/myacme \
  --config-home ~/myacme/data \
  --cert-home  ~/mycerts \
  --accountemail  "hi@acme.sh" \
  --accountkey  ~/myaccount.key \
  --accountconf ~/myaccount.conf \
  --useragent  "this is my client."
```

or

```
wget -O- https://git.io/acme.sh | sh -s - \
  --home ~/myacme \
  --config-home ~/myacme/data \
  --cert-home  ~/mycerts \
  --accountemail  "hi@acme.sh" \
  --accountkey  ~/myaccount.key \
  --accountconf ~/myaccount.conf \
  --useragent  "this is my client."
```
