# minitrice.ps1
# Petit calculateur PowerShell (Minitrice)
# Mode interactif, pipe ou fichier

function Calculer {
    param([string]$expression)

    try {
        if ($expression -match "/0") {
            Write-Error "Division par zéro"
            exit 1
        }

        $resultat = Invoke-Expression $expression
        if ($resultat -is [double]) {
            "{0:N2}" -f $resultat
        } else {
            $resultat
        }
    } catch {
        Write-Error "Erreur de syntaxe"
        exit 1
    }
}

# Sinon mode interactif
Write-Host "Minitrice - tapez Ctrl+D pour quitter"
while ($true) {
    try {
    $expression = Read-Host "> "
    # Consider empty, whitespace-only or null input as request to quit
    if ([string]::IsNullOrWhiteSpace($expression)) { break }
        Calculer $expression
    } catch {
        break
    }
}
Write-Host "Fin des calculs"
exit 0
