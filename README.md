andrewrothstein.bitcoin-core
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-bitcoin-core.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-bitcoin-core)

Installs [BitCoin Core](https://bitcoin.org/en/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.bitcoin-core
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
