#!/bin/bash
redis-server --daemonize yes &
n8n start --host 0.0.0.0 --port 5678

