# 🧮 Minitrice - Projet PowerShell (GitFlow)

## 📑 Table des matières
- [Installation](#installation)
- [Exécution](#exécution)
- [Structure du dépôt](#structure-du-dépôt)
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
.\minitrice.ps1  
> 3+9  
12  
> Ctrl+Z (Windows PowerShell)  
Fin des calculs  

### Avec echo
"3+12" | .\minitrice.ps1  
15  

### Avec cat (Get-Content)
Get-Content .\test\00-addition.txt | .\minitrice.ps1 > .\results\00-addition-result.txt  
Get-Content .\test\01-division.txt | .\minitrice.ps1 > .\results\01-division-result.txt  

### Avec generator
.\generator.ps1 2 | .\minitrice.ps1  

---

## 📂 Structure du dépôt
git-evaluation_groupe-9/  
├── generator.ps1  
├── minitrice.ps1  
├── README.md  
├── results/  
│   ├── 00-addition-result.txt  
│   └── 01-division-result.txt  
└── test/  
    ├── 00-addition.txt  
    └── 01-division.txt  

---

## 💡 Remarques
- Projet réalisé en PowerShell.  
- Gestion des erreurs incluse (syntaxe invalide, division par zéro).  
- Résultats arrondis à 2 décimales si nécessaire.  
- Workflow GitFlow respecté (branches `feature/...`, merge dans `main`).  

---

---

## 📚 Références / Liens utiles
- [Introduction à PowerShell – Microsoft Learn](https://learn.microsoft.com/fr-fr/powershell/scripting/overview)  
- [Les opérateurs arithmétiques en PowerShell – IT-Connect](https://www.it-connect.fr/chapitres/powershell-les-operateurs-arithmetiques/)  
- [Utiliser Get-Content et Write-Output – Microsoft Docs](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/get-content)  
- [Tutoriel : Créer une calculatrice en PowerShell – Refactored Codes](https://refactoredcodes.com/powershell-learn-positional-parameter-switch-expression-mandatory-parameter-reading-parameter-from-pipeline-by-creating-a-calculator/)  
- [Git : Guide du workflow GitFlow](https://www.atlassian.com/fr/git/tutorials/comparing-workflows/gitflow-workflow)  

