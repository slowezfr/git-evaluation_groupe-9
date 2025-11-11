param(
    [Parameter(ValueFromPipeline = $true)]
    [string]$line
)

begin {
    # Si l'entrée est redirigée (pipeline), on ne lance pas le mode interactif
    $interactive = -not [Console]::IsInputRedirected
    if ($interactive) {
        Write-Output "Minitrice - tapez Ctrl+D (Linux/macOS) ou Ctrl+Z (Windows) pour quitter"
    }
}

process {
    if ($interactive) {
        # Mode interactif
        while ($true) {
            $line = Read-Host "> "
            if ($null -eq $line) { break }
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
    else {
        # Mode pipeline
        $line = $line.Trim()
        if ($line -eq "") { return }

        try {
            if ($line -match "/0") {
                Write-Output "Division par zéro"
                return
            }
            $result = Invoke-Expression $line
            "{0:N2}" -f $result
        } catch {
            Write-Output "Erreur de syntaxe pour le calcul: '$line'"
        }
    }
}

end {
    Write-Output "Fin des calculs"
}

