# waitfor

Simple sidecar `waitfor` file lock.

Wait for a file at given filepath to exist within a specified retry limit.

Checks are performed every second. 


## Usage

```shell
> waitfor <filepath> <retry_limit> && <on_found_command>
> waitfor <filepath> <retry_limit> || <on_retry_limit_exhausted_command>
```

Concrete example

```shell
> waitfor /tmp/mongodb-bootstrap-lock 20 && mongod
```


