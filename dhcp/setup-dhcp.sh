#!/usr/bin/env bash
set -euo pipefail

# Bootstrap script for the DHCP1 node.
# Run this inside the DHCP1 container (or adapt it for your image build).

IFACE="eth1"
SERVER_IP="120.0.164.10/24"
CONF_DIR="/etc/dnsmasq.d"
CONF_FILE="${CONF_DIR}/enterprise-dhcp.conf"

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y dnsmasq iproute2

# Configure the service interface with a static IP.
ip link set "${IFACE}" up
ip addr flush dev "${IFACE}" || true
ip addr add "${SERVER_IP}" dev "${IFACE}"

mkdir -p "${CONF_DIR}"
cp /opt/dhcp/dnsmasq.conf "${CONF_FILE}"

# Start dnsmasq in the foreground so container logs show DHCP activity.
exec dnsmasq --no-daemon --conf-file="${CONF_FILE}"
