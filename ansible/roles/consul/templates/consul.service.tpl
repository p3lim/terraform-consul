[Unit]
Description=Consul Startup process
After=network.target

[Service]
Type=simple
ExecStart=/bin/bash -c '/usr/local/bin/consul agent -config-dir /etc/consul.d/'
TimeoutStartSec=0
Restart=always
RestartSec=3

[Install]
WantedBy=default.target
