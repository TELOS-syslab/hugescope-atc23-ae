numactl --preferred=0 redis-server /root/test/redis-6.0.8/redis.conf &
./bin/ycsb load redis -s -threads 128  -P workloads/workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" > outputRedisLoad.txt