#!/bin/bash
for i in workitem-{0..99}; do
	curl -X POST localhost:8080/memq/server/queues/keygen/enqueue -d "$i"
done
