# aider-environment

run

```
./aider
```

This script do:
 - create `workspace` folder if not exists
 - build docker image `aider` with all dependencies inside
 - start container `aider_${USER}` with persistent storage in folder `workspace`

After script end is container `aider_${USER}` removed, but image `aider` and data in `workspace` remain for next faster start.
