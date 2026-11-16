sudo apt update && sudo apt install -y bind9 bind9utils dnsutils
sudo nano /etc/bind/named.conf.options       # opciones
sudo nano /etc/bind/named.conf.local         # declarar zonas
sudo nano /etc/bind/db.NOMBRE                # ficheros de zona
sudo named-checkconf                          # revisa configuración (sin salida = OK)
sudo named-checkzone ZONA /ruta/fichero      # revisa una zona (dice OK)
sudo systemctl restart bind9                  # aplicar cambios
sudo systemctl status bind9                   # ver si arrancó
sudo journalctl -u named -e                   # ver errores
sudo ufw allow Bind9                          # si el firewall está activo (53 tcp/udp)