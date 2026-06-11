# Tests de Détection

## Analyse des logs

Commande :

```bash
sudo tail -f /var/log/suricata/fast.log
```

## Test ICMP

```bash
ping 192.168.50.1
```

Résultat :

- génération d'une alerte ;
- message PING DETECTED.

## Test Scan Réseau

```bash
nmap -sS 192.168.50.10
```

Résultat :

- génération d'une alerte ;
- message SYN SCAN DETECTED.

## Conclusion

Les règles personnalisées fonctionnent correctement.