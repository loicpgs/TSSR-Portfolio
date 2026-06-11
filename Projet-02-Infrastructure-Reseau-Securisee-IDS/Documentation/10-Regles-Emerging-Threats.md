# Intégration des Règles Emerging Threats

## Objectif

Renforcer les capacités de détection de Suricata.

## Installation

```bash
sudo apt install suricata-update -y
sudo suricata-update
```

## Activation

Configuration :

```yaml
rule-files:
  - suricata.rules
  - local.rules
```

## Vérification

```bash
sudo suricata -T -c /etc/suricata/suricata.yaml -v
```

## Tests

```bash
nmap -A 192.168.50.10
```

## Résultat

Les règles communautaires permettent de détecter davantage de comportements suspects.