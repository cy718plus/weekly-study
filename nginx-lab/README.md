# Nginx 进阶学习实验

## 1. 负载均衡

本周使用 3 个 Python HTTP 服务模拟后端：

- Backend 1：127.0.0.1:8001
- Backend 2：127.0.0.1:8002
- Backend 3：127.0.0.1:8003

完成以下 Nginx upstream 实验：

- Round-Robin 轮询
- weight 权重
- backup 备用节点
- max_fails / fail_timeout 故障处理
- least_conn 最少连接
- ip_hash
- random

并实际验证后端节点停止后，Nginx 仍能将请求转发到其他可用节点。

## 2. Nginx 性能优化

完成：

- Gzip 压缩
- 静态资源缓存
- Cache-Control / Expires
- keep-alive
- worker_processes
- worker_connections
- sendfile
- tcp_nopush

Gzip 测试中：

- 未压缩文件：11092 bytes
- Gzip 压缩后：576 bytes

## 3. SSL/TLS

使用 OpenSSL 创建本地自签名证书，并完成：

- Nginx HTTPS 配置
- TLS 1.2 测试
- TLS 1.3 测试
- 自签名证书信任错误排查

注意：SSL 私钥未保存到 Git 仓库。

## 4. DNS

学习并实践：

- A
- AAAA
- CNAME
- MX
- TXT
- SRV
- NS
- TTL

使用 dig 完成 DNS 查询，并分别使用：

- Cloudflare DNS：1.1.1.1
- Google DNS：8.8.8.8

验证公共 DNS 解析结果。

同时学习了域名、子域名、Nginx server_name 与 Let's Encrypt / Certbot 的基本工作流程。
