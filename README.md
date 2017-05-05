# ueberDB Docker Environment

Use Docker containers to run tests and benchmarks for [ueberDB](https://github.com/Pita/ueberDB)

## Prepare your environment

Just need to run this once:

```bash
./create_local_env.sh
```

## Run ueberDB tests

```bash
eval "$(docker-machine env ueberdb)"
docker-compose run --rm node
```
