
---

### 5. Troisième fichier

**03-Routage-NAT.md**

```markdown
# Routage et NAT

## Activation du routage

Commande :

```bash
cat /proc/sys/net/ipv4/ip_forward

La valeur 1 confirme l'activation du routage IPv4.

Configuration du NAT

Commande :

sudo iptables -t nat -L

Le NAT permet aux équipements du réseau privé d'accéder à Internet via l'adresse WAN du routeur.

Résultat

Les postes du LAN peuvent communiquer avec Internet sans être directement exposés.