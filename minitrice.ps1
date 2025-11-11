# minitrice.ps1
# Lit l'entrée standard ligne par ligne et calcule les résultats

# Vérifie si on reçoit quelque chose du pipeline
if (-not [Console]::KeyAvailable) {
    while ($line = [Console]::In.ReadLine()) {
        if ($line -eq $null) { break }
        $line = $line.Trim()
        if ($line -eq "") { continue }

        try {
            if ($line -match "/0") {
                Write-Output "Division par zéro"
                exit 1
            }
            $result = Invoke-Expression $line
            # Arrondit à 2 décimales si nécessaire
            "{0:N2}" -f $result
        } catch {
            Write-Output "Erreur de syntaxe pour le calcul: '$line'"
            exit 1
        }
    }
} else {
    # Mode interactif si rien n'est envoyé par pipeline
    Write-Output "Minitrice - tapez Ctrl+D pour quitter"
    while ($true) {
        $line = Read-Host "> "
        if ($line -eq $null) { break }
        $line = $line.Trim()
        if ($line -eq "") { continue }

        try {
            if ($line -match "/0") {
                Write-Output "Division par zéro"
                continue
            }
            $result = Invoke-Expression $line
            "{0:N2}" -f $result
        } catch {
            Write-Output "Erreur de syntaxe pour le calcul: '$line'"
        }
    }
}
Write-Output "Fin des calculs"
exit 0
