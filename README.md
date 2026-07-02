# 🛡️ Nmap Scan Script

<p align="center">
  <img src="https://img.shields.io/badge/Maintained%3F-yes-green.svg" alt="Maintained">
  <img src="https://img.shields.io/badge/Language-Shell-blue.svg" alt="Language">
  <img src="https://img.shields.io/badge/Tool-Nmap-orange.svg" alt="Tool">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License">
</p>

## 📝 Description
**Nmap Scan Script** est un outil d'automatisation en Bash conçu pour simplifier et accélérer les audits de sécurité réseau. Grâce à un menu interactif et épuré, il permet aux administrateurs systèmes et aux passionnés de cybersécurité d'exécuter rapidement les commandes de scan `nmap` les plus courantes sans avoir à se souvenir de toute la syntaxe des options.

---

## ✨ Fonctionnalités

Le script propose 5 types de scans adaptés à différents scénarios :

* **⚡ Scan rapide :** Analyse rapide des 100 ports les plus courants (`-F`).
* **🔍 Scan complet :** Analyse standard sur les 1000 ports par défaut.
* **🛠️ Détection des services :** Identifie les versions des logiciels qui tournent sur les ports ouverts (`-sV`).
* **🚀 Scan avancé :** Détection agressive incluant l'OS, les versions et les scripts de base (`-A`, requiert `sudo`).
* **🌐 Ping scan :** Détection simple des machines actives sur le réseau sans scanner les ports (`-sn`).

---

## 🚀 Utilisation

### Prérequis
Assurez-vous que `nmap` est installé sur votre système Linux :
```bash
sudo apt update && sudo apt install nmap -y
Installation et Exécution
Clonez le dépôt (ou téléchargez le script) :

Bash
git clone [https://github.com/Yassine12c/Nmap_scan-script.git](https://github.com/Yassine12c/Nmap_scan-script.git)
cd Nmap_scan-script
Rendez le script exécutable :

Bash
chmod +x scan.sh
Lancez le script :

Bash
./scan.sh
⚠️ Avertissement Légal
Ce script est développé uniquement à des fins éducatives et d'audit de sécurité légal. Ne scannez jamais une cible (IP ou domaine) sans l'autorisation écrite explicite de son propriétaire. Pour vos tests, privilégiez votre propre infrastructure de laboratoire ou des plateformes autorisées comme scanme.nmap.org.

👤 Auteur
Yassine Cherkaoui - Développement et intégration - Yassine12c
