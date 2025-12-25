#!/bin/bash

ACTION=$1

case $ACTION in
  "start")
    docker compose -p penpot up -d
    ;;
  "stop")
    docker compose -p penpot down
    ;;
  "restart")
    docker compose -p penpot restart
    ;;
  "logs")
    docker compose -p penpot logs -f
    ;;
  "status")
    docker compose -p penpot ps
    ;;
  "update")
    docker compose -p penpot pull
    docker compose -p penpot up -d --force-recreate
    ;;
  *)
    echo "Usage: $0 {start|stop|restart|logs|status|update}"
    ;;
esac