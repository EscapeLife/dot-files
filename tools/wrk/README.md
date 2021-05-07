# wrk

> **[wrk](https://github.com/wg/wrk) - a modern HTTP benchmarking tool**

- **basic usage**

```bash
# 12 threads / 400 connections / 30 seconds
$ wrk -t12 -c400 -d30s http://127.0.0.1:8080/index.html
Running 30s test @ http://127.0.0.1:8080/index.html
  12 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   635.91us    0.89ms  12.92ms   93.69%
    Req/Sec    56.20k     8.07k   62.00k    86.54%
  22464657 requests in 30.00s, 17.76GB read
Requests/sec: 748868.53
Transfer/sec:    606.33MB
```
