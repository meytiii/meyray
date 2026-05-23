#!/bin/sh
set -eu

CONFIG_TEMPLATE="/etc/config.template.json"
CONFIG="/etc/config.json"

generate_uuid() {
    prefix="4b616b6f-6f6c-4e65-7773"
    suffix=$(od -An -tx1 -N6 /dev/urandom | tr -d ' \n')
    echo "${prefix}-${suffix}"
}

UUID="${VLESS_UUID:-$(generate_uuid)}"

sed "s/\${UUID}/$UUID/g" "$CONFIG_TEMPLATE" > "$CONFIG"

SNI="${CODESPACE_NAME:-localhost}-443.app.github.dev"

echo ""
echo "========================================"
echo "  MeyRay - VLESS Proxy (OLD IPs)"
echo "========================================"
echo ""
echo "VLESS links:"
echo "vless://${UUID}@94.130.50.12:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@63.141.252.203:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@94.130.70.160:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@144.76.1.88:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@50.7.5.83:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@94.130.33.41:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@95.216.69.37:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@144.76.1.88:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@85.10.207.48:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@94.130.13.19:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@185.58.242.39:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@194.59.171.194:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@188.213.209.146:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@212.16.68.85:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@193.151.147.47:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@95.38.197.166:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo ""
echo "========================================"
echo ""
echo "========================================"
echo "  MeyRay - VLESS Proxy (New IPs)"
echo "========================================"
echo ""
echo "VLESS links:"
echo "vless://${UUID}@81.12.32.136:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@46.38.137.156:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@45.89.221.111:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@131.214.250.94:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@85.198.12.209:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo "vless://${UUID}@85.9.112.219:443?encryption=none&security=tls&type=ws&sni=${SNI}&path=%2F#@Mey2Ray"
echo ""
echo "========================================"
echo ""

/usr/local/bin/xray -c "$CONFIG" &
XRAY_PID=$!

while kill -0 "$XRAY_PID" 2>/dev/null; do
    echo "[MeyRay] alive - $(date '+%H:%M:%S')"
    sleep 300
done
