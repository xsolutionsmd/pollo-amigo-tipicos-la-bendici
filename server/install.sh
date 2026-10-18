#!/usr/bin/env bash
set -euo pipefail
[[ $EUID == 0 ]] || { echo 'Run with sudo on the prepared server.' >&2; exit 1; }
cd "$(dirname "$0")/.."
for command in docker curl git python3 flock timeout sync systemctl; do command -v "$command" >/dev/null; done
docker compose version >/dev/null
docker network inspect xsolutions-proxy >/dev/null
[[ $(uname -m) == aarch64 ]] || { echo 'This installation expects ARM64.' >&2; exit 1; }
for path in /opt/pollo-amigo-tipicos-la-bendici /var/lib/pollo-amigo-tipicos-la-bendici-deploy /usr/local/share/pollo-amigo-tipicos-la-bendici; do
  [[ ! -L "$path" ]] || { echo 'Installation directories must not be symlinks.' >&2; exit 1; }
done
was_active=false
if systemctl is-active --quiet pollo-amigo-tipicos-la-bendici-update.timer; then was_active=true; fi
if systemctl cat pollo-amigo-tipicos-la-bendici-update.timer >/dev/null 2>&1; then systemctl stop pollo-amigo-tipicos-la-bendici-update.timer; fi
if systemctl cat pollo-amigo-tipicos-la-bendici-update.service >/dev/null 2>&1; then systemctl stop pollo-amigo-tipicos-la-bendici-update.service; fi
install -d -o root -g root -m 755 /opt/pollo-amigo-tipicos-la-bendici /usr/local/share/pollo-amigo-tipicos-la-bendici
install -d -o root -g root -m 700 /var/lib/pollo-amigo-tipicos-la-bendici-deploy
# Serialize administrator installation with any directly invoked updater too.
exec 9>/var/lib/pollo-amigo-tipicos-la-bendici-deploy/update.lock
flock -w 120 9
install -o root -g root -m 644 compose.production.yaml /usr/local/share/pollo-amigo-tipicos-la-bendici/compose.yaml
install -o root -g root -m 755 server/update-release.sh /usr/local/sbin/pollo-amigo-tipicos-la-bendici-update
install -o root -g root -m 644 server/pollo-amigo-tipicos-la-bendici-update.service /etc/systemd/system/pollo-amigo-tipicos-la-bendici-update.service
install -o root -g root -m 644 server/pollo-amigo-tipicos-la-bendici-update.timer /etc/systemd/system/pollo-amigo-tipicos-la-bendici-update.timer
# The retention observer and timer use this application's updater lock.
# Release our installation lock before installing the observer and shared timer.
flock -u 9
exec 9>&-
python3 server/retention/install_retention.py --config server/retention/app.json --service pollo-amigo-tipicos-la-bendici-update.service
systemctl daemon-reload
if [[ "$was_active" == true ]]; then systemctl start pollo-amigo-tipicos-la-bendici-update.timer; fi
echo 'Installed pollo-amigo-tipicos-la-bendici runtime and automatic image retention; existing app timer state preserved. For first setup, prepare HTTPS route then enable --now pollo-amigo-tipicos-la-bendici-update.timer.'
