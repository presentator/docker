Presentator Dockerfile
======================================================================

> [!TIP]
> Presentator v3 is [distributed as a single static binary](https://github.com/presentator/presentator/releases) and you may not need Docker.

This repo provides a sample `Dockerfile` (linux/amd64) for [Presentator v3](https://github.com/presentator/presentator).

- [Configurations](#configurations)
- [Docker Hub images](#docker-hub-images)
- [Upgrade from v2](#upgrade-from-v2)


## Configurations

The image exposes the application server on port `8080`.

The Presentator executable is located at `/pr/presentator`.

By default the following volume mounting point(s) are available:

- `/pr/pb_data` - (**required**) app DB data and storage files
- `/pr/pb_hooks` - (optional) custom app JS hooks (see [PocketBase - Extend with JS](https://pocketbase.io/docs/js-overview/))
- `/pr/pb_migrations` - (optional) custom app JS migrations (see [PocketBase - Extend with JS](https://pocketbase.io/docs/js-overview/))


## Docker Hub images

> [!NOTE]
> The tags correspond to the [release versions of Presentator](https://github.com/presentator/presentator/releases).

- `ganigeorgiev/presentator:latest`, `ganigeorgiev/presentator:3`
- `ganigeorgiev/presentator:3.4`, `ganigeorgiev/presentator:3.4.32`, `ganigeorgiev/presentator:3.4.31`, `ganigeorgiev/presentator:3.4.30`, `ganigeorgiev/presentator:3.4.29`, `ganigeorgiev/presentator:3.4.28`, `ganigeorgiev/presentator:3.4.27`, `ganigeorgiev/presentator:3.4.26`, `ganigeorgiev/presentator:3.4.25`, `ganigeorgiev/presentator:3.4.24`, `ganigeorgiev/presentator:3.4.23`, `ganigeorgiev/presentator:3.4.22`, `ganigeorgiev/presentator:3.4.21`, `ganigeorgiev/presentator:3.4.20`, `ganigeorgiev/presentator:3.4.19`, `ganigeorgiev/presentator:3.4.18`, `ganigeorgiev/presentator:3.4.17`, `ganigeorgiev/presentator:3.4.16`, `ganigeorgiev/presentator:3.4.15`, `ganigeorgiev/presentator:3.4.14`, `ganigeorgiev/presentator:3.4.13`, `ganigeorgiev/presentator:3.4.12`, `ganigeorgiev/presentator:3.4.11`, `ganigeorgiev/presentator:3.4.10`, `ganigeorgiev/presentator:3.4.9`, `ganigeorgiev/presentator:3.4.8`, `ganigeorgiev/presentator:3.4.7`, `ganigeorgiev/presentator:3.4.6`, `ganigeorgiev/presentator:3.4.5`, `ganigeorgiev/presentator:3.4.4`, `ganigeorgiev/presentator:3.4.3`, `ganigeorgiev/presentator:3.4.2`, `ganigeorgiev/presentator:3.4.1`, `ganigeorgiev/presentator:3.4.0`
- `ganigeorgiev/presentator:3.3`,  `ganigeorgiev/presentator:3.3.5`, `ganigeorgiev/presentator:3.3.4`, `ganigeorgiev/presentator:3.3.3`, `ganigeorgiev/presentator:3.3.2`, `ganigeorgiev/presentator:3.3.1`, `ganigeorgiev/presentator:3.3.0`
- `ganigeorgiev/presentator:3.2`, `ganigeorgiev/presentator:3.2.10`, `ganigeorgiev/presentator:3.2.9`, `ganigeorgiev/presentator:3.2.8`, `ganigeorgiev/presentator:3.2.7`, `ganigeorgiev/presentator:3.2.6`, `ganigeorgiev/presentator:3.2.5`, `ganigeorgiev/presentator:3.2.4`, `ganigeorgiev/presentator:3.2.3`, `ganigeorgiev/presentator:3.2.2`, `ganigeorgiev/presentator:3.2.1`, `ganigeorgiev/presentator:3.2.0`
- `ganigeorgiev/presentator:3.1`, `ganigeorgiev/presentator:3.1.1`, `ganigeorgiev/presentator:3.1.0`
- `ganigeorgiev/presentator:3.0`, `ganigeorgiev/presentator:3.0.0`
- `ganigeorgiev/presentator:2.15`, `ganigeorgiev/presentator:2.15.1`, `ganigeorgiev/presentator:2.15.0`
- `ganigeorgiev/presentator:2.14`, `ganigeorgiev/presentator:2.14.0`
- `ganigeorgiev/presentator:2.13`, `ganigeorgiev/presentator:2.13.1`, `ganigeorgiev/presentator:2.13.0`
- `ganigeorgiev/presentator:2.12`, `ganigeorgiev/presentator:2.12.0`
- `ganigeorgiev/presentator:2.11`, `ganigeorgiev/presentator:2.11.1`, `ganigeorgiev/presentator:2.11.0`
- `ganigeorgiev/presentator:2.10`, `ganigeorgiev/presentator:2.10.1`, `ganigeorgiev/presentator:2.10.0`
- `ganigeorgiev/presentator:2.9`, `ganigeorgiev/presentator:2.9.3`, `ganigeorgiev/presentator:2.9.2`, `ganigeorgiev/presentator:2.9.1`, `ganigeorgiev/presentator:2.9.0`
- `ganigeorgiev/presentator:2.8`, `ganigeorgiev/presentator:2.8.3`, `ganigeorgiev/presentator:2.8.2`, `ganigeorgiev/presentator:2.8.1`, `ganigeorgiev/presentator:2.8.0`
- `ganigeorgiev/presentator:2.7`, `ganigeorgiev/presentator:2.7.2`, `ganigeorgiev/presentator:2.7.1`, `ganigeorgiev/presentator:2.7.0`
- `ganigeorgiev/presentator:2.6`, `ganigeorgiev/presentator:2.6.3`, `ganigeorgiev/presentator:2.6.2`, `ganigeorgiev/presentator:2.6.1`, `ganigeorgiev/presentator:2.6.0`
- `ganigeorgiev/presentator:2.5`, `ganigeorgiev/presentator:2.5.3`, `ganigeorgiev/presentator:2.5.2`, `ganigeorgiev/presentator:2.5.1`, `ganigeorgiev/presentator:2.5.0`
- `ganigeorgiev/presentator:2.4`, `ganigeorgiev/presentator:2.4.0`
- `ganigeorgiev/presentator:2.3`, `ganigeorgiev/presentator:2.3.3`, `ganigeorgiev/presentator:2.3.2`, `ganigeorgiev/presentator:2.3.1`, `ganigeorgiev/presentator:2.3.0`
- `ganigeorgiev/presentator:2.2`, `ganigeorgiev/presentator:2.2.2`, `ganigeorgiev/presentator:2.2.1`, `ganigeorgiev/presentator:2.2.0`
- `ganigeorgiev/presentator:2.1`, `ganigeorgiev/presentator:2.1.2`, `ganigeorgiev/presentator:2.1.1`, `ganigeorgiev/presentator:2.1.0`
- `ganigeorgiev/presentator:2.0`, `ganigeorgiev/presentator:2.0.6`, `ganigeorgiev/presentator:2.0.5`, `ganigeorgiev/presentator:2.0.4`
- `ganigeorgiev/presentator:1.13`, `ganigeorgiev/presentator:1.13.2`, `ganigeorgiev/presentator:1.13.1`, `ganigeorgiev/presentator:1.13.0`
- `ganigeorgiev/presentator:1.12`, `ganigeorgiev/presentator:1.12.0`
- `ganigeorgiev/presentator:1.11`, `ganigeorgiev/presentator:1.11.3`, `ganigeorgiev/presentator:1.11.2`, `ganigeorgiev/presentator:1.11.1`, `ganigeorgiev/presentator:1.11.0`
- `ganigeorgiev/presentator:1.10`, `ganigeorgiev/presentator:1.10.0`
- `ganigeorgiev/presentator:1.9`, `ganigeorgiev/presentator:1.9.1`, `ganigeorgiev/presentator:1.9.0`


## Upgrade from v2

Presentator v3 comes with a lot of new features and has some breaking changes (including files and db structure).
If you have previously installed Presentator v2, make sure to check the [`v2tov3migrate` instructions](https://github.com/presentator/v2tov3migrate).
