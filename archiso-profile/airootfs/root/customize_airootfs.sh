#!/usr/bin/env bash
set -e -u
useradd -m -G wheel,docker -s /bin/bash liveuser
echo liveuser:live | chpasswd
sed -i "s/^# %wheel ALL=(ALL:ALL) NOPASSWD: ALL/%wheel ALL=(ALL:ALL) NOPASSWD: ALL/" /etc/sudoers
dconf update
