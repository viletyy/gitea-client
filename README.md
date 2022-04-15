<!--
 * @Description: Do not edit
 * @Date: 2022-04-15 15:42:52
 * @LastEditors: viletyy
 * @Author: viletyy
 * @LastEditTime: 2022-04-15 15:49:49
 * @FilePath: /gitea-client/README.md
-->
# GiteaClient

[![GiteaClient](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/viletyy/gitea-client)

Gitea Api 库

## 内容列表

- [GiteaClient](#giteaclient)
  - [内容列表](#内容列表)
  - [使用说明](#使用说明)
  - [如何贡献](#如何贡献)
  - [使用许可](#使用许可)

## 使用说明

```ruby
require 'gitea-client'

client = Gitea::Api::Client.new({domain: YOUR_GITEA_SERVER_DOMAIN, base_url: YOUR_GITEA_API_BASE_URL, token: YOUR_TOKRN, username: YOUR_USERNAME, password: YOUR_PASSWORD})

client.get_users_search({query: {q: 'viletyy'}})

```

## 如何贡献

非常欢迎你的加入！[提一个 Issue](https://github.com/viletyy/gitea-client/issues/new) 或者提交一个 Pull Request。


## 使用许可

[MIT]() © ViletYy
