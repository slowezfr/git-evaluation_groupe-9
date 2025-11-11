# 🧮 Minitrice - Projet PowerShell (GitFlow)

## 📑 Table des matières
- [Installation](#installation)
- [Exécution](#exécution)
- [Remarques](#remarques)
- [Publication (optionnel)](#publication-optionnel)
- [Références / Liens utiles](#références--liens-utiles)

---

## ⚙️ Installation
git clone https://github.com/slowezfr/git-evaluation_groupe-9.git
cd git-evaluation_groupe-9

### Prérequis
- PowerShell installé (Windows 10/11 ou via WSL/Linux).
- Aucun package externe requis.

---

## ▶️ Exécution

### Mode interactif
./minitrice
> 3+9
12
> Ctrl+D
Fin des calculs

### Avec echo
echo "3+12" | ./minitrice
15

### Avec cat
cat test/00-addition.txt | ./minitrice

### Avec generator
./generator 2 | ./minitrice

---

## 💡 Remarques
- Projet réalisé en PowerShell.
- Gestion des erreurs incluse (syntaxe invalide, division par zéro).
- Résultats arrondis à 2 décimales si nécessaire.

---

## 🎥 Publication (optionnel)
Lien YouTube de la vidéo Gource : *(à ajouter si réalisée)*

---

## 📚 Références / Liens utiles
- GitFlow — modèle de branches
- Philosophie Unix
- Documentation PowerShell
- EOF / Ctrl+D
- Pipeline Unix
