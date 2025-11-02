Set-Content -Path .\README.md -Value "# 🧮 Minitrice - Projet PowerShell (GitFlow)

## Installation
\`\`\`bash
git clone https://github.com/<ton-user>/git-evaluation_groupe-1.git
\`\`\`

## Utilisation

### Mode interactif
\`\`\`
.\minitrice.ps1
\`\`\`

### Mode fichier
\`\`\`
Get-Content .\test\00-addition.txt | .\minitrice.ps1
\`\`\`

### Génération aléatoire
\`\`\`
.\generator.ps1 3 | .\minitrice.ps1
\`\`\`

## Structure
- minitrice.ps1
- generator.ps1
- test/
- results/

## Auteurs
Projet ESGI – PowerShell – Rudy et binôme"
