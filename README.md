# Triton git2consul

Dockerized version of [git2consul](https://github.com/Cimpress-MCP/git2consul) optimized for Joyent Triton.

This is incomplete, but it builds and I have the following notes about what I've discovered so far:

- `git2consul` expects its configuration to live in Consul and provides [`config_seeder.js`](https://github.com/Cimpress-MCP/git2consul/blob/master/utils/config_seeder.js) to help load it there.
- `git2consul` does not automatically reload its config, so we need to start it with the `-h` flag. That will cause it to exit when the configuration changes. If combined with `--restart=always` in the `docker run`, the container will restart and load the new configuration.

