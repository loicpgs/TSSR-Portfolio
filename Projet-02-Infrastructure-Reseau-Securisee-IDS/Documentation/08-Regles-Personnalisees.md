# Règles Personnalisées Suricata

## Création des règles

Fichier :

```bash
/var/lib/suricata/rules/local.rules
```

## Détection ICMP

```bash
alert icmp any any -> any any (msg:"PING DETECTED"; sid:1000001; rev:1;)
```

## Détection de scan SYN

```bash
alert tcp any any -> any any (flags:S; msg:"SYN SCAN DETECTED"; sid:1000002; rev:1;)
```

## Activation

```yaml
rule-files:
  - local.rules
```

## Validation

```bash
sudo suricata -T -c /etc/suricata/suricata.yaml -v
```