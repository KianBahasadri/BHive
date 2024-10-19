#!/bin/bash
while inotifywait -e close_write /etc/wireguard/wg0.conf
do
  wg syncconf wg0 <(wg-quick strip wg0)
done