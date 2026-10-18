#!/usr/bin/env bash
set -euo pipefail
[[ $EUID == 0 ]] || { echo 'Run with sudo on the prepared server.' >&2; exit 1; }
cd "$(dirname "$0")/../.."
for command in docker curl git python3 flock timeout sync systemctl; do command -v "$command" >/dev/null; done
docker compose version >/dev/null
docker network inspect xsolutions-proxy >/dev/null
[[ $(uname -m) == aarch64 ]] || { echo 'This installation expects ARM64.' >&2; exit 1; }
for path in /opt/pollo-amigo-tipicos-la-bendici-derek-dev /var/lib/pollo-amigo-tipicos-la-bendici-derek-dev-deploy /usr/local/share/pollo-amigo-tipicos-la-bendici-derek-dev; do
  [[ ! -L "$path" ]] || { echo 'Installation directories must not be symlinks.' >&2; exit 1; }
done
was_active=false
if systemctl is-active --quiet pollo-amigo-tipicos-la-bendici-derek-dev-update.timer; then was_active=true; fi
if systemctl cat pollo-amigo-tipicos-la-bendici-derek-dev-update.timer >/dev/null 2>&1; then systemctl stop pollo-amigo-tipicos-la-bendici-derek-dev-update.timer; fi
if systemctl cat pollo-amigo-tipicos-la-bendici-derek-dev-update.service >/dev/null 2>&1; then systemctl stop pollo-amigo-tipicos-la-bendici-derek-dev-update.service; fi
install -d -o root -g root -m 755 /opt/pollo-amigo-tipicos-la-bendici-derek-dev /usr/local/share/pollo-amigo-tipicos-la-bendici-derek-dev
install -d -o root -g root -m 700 /var/lib/pollo-amigo-tipicos-la-bendici-derek-dev-deploy
# Serialize administrator installation with any directly invoked updater too.
exec 9>/var/lib/pollo-amigo-tipicos-la-bendici-derek-dev-deploy/update.lock
flock -w 120 9
install -o root -g root -m 644 server/derek-dev/compose.yaml /usr/local/share/pollo-amigo-tipicos-la-bendici-derek-dev/compose.yaml
install -o root -g root -m 755 server/derek-dev/update-release.sh /usr/local/sbin/pollo-amigo-tipicos-la-bendici-derek-dev-update
install -o root -g root -m 644 server/derek-dev/pollo-amigo-tipicos-la-bendici-derek-dev-update.service /etc/systemd/system/pollo-amigo-tipicos-la-bendici-derek-dev-update.service
install -o root -g root -m 644 server/derek-dev/pollo-amigo-tipicos-la-bendici-derek-dev-update.timer /etc/systemd/system/pollo-amigo-tipicos-la-bendici-derek-dev-update.timer
# The retention observer and timer use this application's updater lock.
# Release our installation lock before installing the observer and shared timer.
flock -u 9
exec 9>&-
python3 server/retention/install_retention.py --config server/derek-dev/retention.json --service pollo-amigo-tipicos-la-bendici-derek-dev-update.service
systemctl daemon-reload
if [[ "$was_active" == true ]]; then systemctl start pollo-amigo-tipicos-la-bendici-derek-dev-update.timer; fi
echo 'Installed pollo-amigo-tipicos-la-bendici-derek-dev runtime and automatic image retention; existing app timer state preserved. For first setup, prepare HTTPS route then enable --now pollo-amigo-tipicos-la-bendici-derek-dev-update.timer.'
