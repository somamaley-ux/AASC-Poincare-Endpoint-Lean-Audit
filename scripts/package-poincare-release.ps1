Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repoRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot "..")).Path
Push-Location $repoRoot
try {
    $status = @(git status --porcelain)
    if ($LASTEXITCODE -ne 0) {
        throw "Could not inspect git status."
    }
    if ($status.Count -ne 0) {
        throw "Refusing to package a dirty working tree. Commit or stash changes first."
    }

    $shortSha = (git rev-parse --short HEAD).Trim()
    if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrWhiteSpace($shortSha)) {
        throw "Could not determine current git commit."
    }

    $distDir = Join-Path $repoRoot "dist"
    New-Item -ItemType Directory -Path $distDir -Force | Out-Null

    $packageBase = "AASC-Poincare-Endpoint-Lean-Audit-$shortSha"
    $stagingDir = Join-Path $distDir $packageBase
    $zipPath = Join-Path $distDir "$packageBase.zip"
    $shaPath = Join-Path $distDir "$packageBase.zip.sha256"
    $manifestPath = Join-Path $distDir "$packageBase.manifest.txt"

    if (Test-Path -LiteralPath $stagingDir) {
        Remove-Item -LiteralPath $stagingDir -Recurse -Force
    }
    if (Test-Path -LiteralPath $zipPath) {
        Remove-Item -LiteralPath $zipPath -Force
    }

    New-Item -ItemType Directory -Path $stagingDir -Force | Out-Null

    $trackedFiles = git ls-files
    if ($LASTEXITCODE -ne 0 -or $trackedFiles.Count -eq 0) {
        throw "Could not enumerate tracked files."
    }

    foreach ($file in $trackedFiles) {
        $source = Join-Path $repoRoot $file
        $target = Join-Path $stagingDir $file
        $targetDir = Split-Path -Parent $target
        if (-not (Test-Path -LiteralPath $targetDir)) {
            New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
        }
        Copy-Item -LiteralPath $source -Destination $target -Force
    }

    $trackedFiles | Set-Content -LiteralPath $manifestPath
    Compress-Archive -Path (Join-Path $stagingDir "*") -DestinationPath $zipPath -CompressionLevel Optimal

    $hash = Get-FileHash -Algorithm SHA256 -LiteralPath $zipPath
    "$($hash.Hash)  $(Split-Path -Leaf $zipPath)" | Set-Content -LiteralPath $shaPath
    Remove-Item -LiteralPath $stagingDir -Recurse -Force

    Write-Host "Created release package:"
    Write-Host $zipPath
    Write-Host "Manifest:"
    Write-Host $manifestPath
    Write-Host "Checksum:"
    Write-Host $shaPath
    Write-Host "SHA256:"
    Write-Host $hash.Hash
}
finally {
    Pop-Location
}
